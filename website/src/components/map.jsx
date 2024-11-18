import { useState, React, useEffect } from "react";
import "leaflet/dist/leaflet.css";
import redIconUrl from "~/src/img/map-marker-2-16.png";
import { MapContainer, TileLayer, Marker, Popup } from "react-leaflet";
import { useMapEvents } from "react-leaflet";
import MarkersList from "~/src/components/markers";

import icon from "leaflet/dist/images/marker-icon.png";
import iconShadow from "leaflet/dist/images/marker-shadow.png";
import iconRetina from "leaflet/dist/images/marker-icon-2x.png";

let redIcon = L.icon({
  iconUrl: redIconUrl,
  iconSize: [16, 16],
  iconAnchor: [8, 16],
  popupAnchor: [0, -16],
});
let DefaultIcon = L.icon({
  ...L.Icon.Default.prototype.options,
  iconUrl: icon,
  iconRetinaUrl: iconRetina,
  shadowUrl: iconShadow,
});
L.Marker.prototype.options.icon = DefaultIcon;

export default function Map() {
  const [markers, setMarkers] = useState([]);
  const [parsedlatlng, setParsedlatlng] = useState(null);

  // useEffect to fetch data from the API
  useEffect(() => {
    fetch("http://localhost:8080/get")
      .then((response) => response.json())
      .then((data) => setMarkers(data.locations))
      .catch((error) => console.error(error));
  }, []);

  L.CRS.pr = L.extend({}, L.CRS.Simple, {
    projection: L.Projection.LonLat,
    transformation: new L.Transformation(0.09434, -96.3, -0.09434, 392.86),

    // Scale, zoom and distance are entirely unchanged from CRS.Simple
    scale: function (zoom) {
      return Math.pow(2, zoom);
    },

    zoom: function (scale) {
      return Math.log(scale) / Math.LN2;
    },

    distance: function (latlng1, latlng2) {
      var dx = latlng2.lng - latlng1.lng,
        dy = latlng2.lat - latlng1.lat;

      return Math.sqrt(dx * dx + dy * dy);
    },
    infinite: true,
  });

  const MapEvents = () => {
    useMapEvents({
      click(e) {
        // coords exist in "e.latlng.lat" and "e.latlng.lng"
        // in game coordinate numbers have been determined experimentally
        setParsedlatlng({
          latDegree: Math.trunc(((e.latlng.lat - 3164) * 1.9) / 60),
          lngDegree: Math.trunc(((e.latlng.lng - 2443) * 1.9) / 60),
          latMinute:
            Math.abs(
              ((e.latlng.lat - 3164) * 1.9) / 60 -
                Math.trunc(((e.latlng.lat - 3164) * 1.9) / 60)
            ) * 60,
          lngMinute:
            Math.abs(
              ((e.latlng.lng - 2443) * 1.9) / 60 -
                Math.trunc(((e.latlng.lng - 2443) * 1.9) / 60)
            ) * 60,
        });
      },
    });
    return false;
  };

  let latitudeDiv;
  let longitudeDiv;
  if (parsedlatlng) {
    if (parsedlatlng.latDegree > 0) {
      latitudeDiv = (
        <div>
          latitude: {Math.trunc(parsedlatlng.latDegree)} degrees{" "}
          {parsedlatlng.latMinute.toFixed()} minutes north
        </div>
      );
    } else {
      latitudeDiv = (
        <div>
          latitude: {Math.trunc(Math.abs(parsedlatlng.latDegree))} degrees{" "}
          {parsedlatlng.latMinute.toFixed()} minutes south
        </div>
      );
    }
    if (parsedlatlng.lngDegree > 0) {
      longitudeDiv = (
        <div>
          longitude: {Math.trunc(parsedlatlng.lngDegree)} degrees{" "}
          {parsedlatlng.lngMinute.toFixed()} minutes east
        </div>
      );
    } else {
      longitudeDiv = (
        <div>
          longitude: {Math.trunc(Math.abs(parsedlatlng.lngDegree))} degrees{" "}
          {parsedlatlng.lngMinute.toFixed()} minutes west
        </div>
      );
    }
  } else {
    latitudeDiv = <div>latitude: </div>;
    longitudeDiv = <div>longitude: </div>;
  }

  return (
    <>
      <div>{latitudeDiv}</div>
      <div>{longitudeDiv}</div>
      <div className="h-full w-full">
        <MapContainer
          minZoom={2}
          maxZoom={6}
          style={{ height: "100%", width: "100%" }}
          center={[3218, 3221]}
          zoom={2}
          scrollWheelZoom={false}
          crs={L.CRS.pr}
        >
          <TileLayer
            url="http://5.78.69.121/{z}/{x}/{y}.png"
            tms={true}
            errorTileUrl="http://5.78.69.121/black.png"
          />
          <MapEvents></MapEvents>
          <MarkersList markers={markers}></MarkersList>
          <Marker icon={redIcon} position={[0, 0]}></Marker>
          <Marker icon={redIcon} position={[3218, 3221]}></Marker>
        </MapContainer>
      </div>
    </>
  );
}
