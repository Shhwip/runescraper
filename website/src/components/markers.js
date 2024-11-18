import {Marker, Popup } from 'react-leaflet';

function CustomMarker(props) {
    icon = L.icon({
        iconUrl: "https://oldschool.runescape.wiki".concat(props.image),
        iconSize: [16, 16],
        iconAnchor: [8, 16],
        shadowUrl: "http://5.78.69.121/redborder.png",
        shadowSize: [18, 18],
        shadowAnchor: [9, 18],
        popupAnchor: [0, -16]
    });
    return <Marker icon={icon} position={[props.latitude,props.longitude]}>
        <Popup>
            <div>
                <h2>{props.name}</h2>
            </div>
        </Popup>
    </Marker>
}

export default function MarkersList(props) {
    return props.markers.map(marker => {
        return <CustomMarker key={marker.id} {...marker} />
    })
}
