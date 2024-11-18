import React from "react";
import BasicMap from "../components/basicMap";
import { useState, React, useEffect } from "react";
import "leaflet/dist/leaflet.css";

export default function AboutRunescraper() {
  return (
    <>
      <div className="w-5/6">
        <h1 className="text-4xl font-bold text-center">Runescraper</h1>
        <p className="text-lg">
          Runescraper is a web application that scrapes the Old School Runescape
          wiki for teleport information and then displays it on a leaflet map.
        </p>
        <br></br>
        <h2 className="text-2xl font-bold">The Problem</h2>
      </div>
      <div className="w-5/6">
        My friend was playing runescape and would constantly send me texts
        throughout the day asking me the fastest route from one part of the game
        to the other. Sometimes I wasn’t by my phone so he would spend 20
        minutes walking to a place that had an in game teleport. I asked him if
        he wanted a tool that would help him navigate. He gave me the following
        minimum requirements:
      </div>
      <ol className="pl-5 list-decimal">
        <li>
          A map
          <ul className="pl-8 list-disc">
            <li>Can pan and zoom.</li>
            <li>Shows the whole in game world</li>
          </ul>
        </li>
        <li>
          All teleports
          <ul className="pl-8 list-disc">
            <li>Visible on the map to where they teleport</li>
            <li>Show what they look like in game</li>
            <li>Shows the name of the teleport</li>
          </ul>
        </li>
      </ol>
      <br></br>
      <h2 className="text-2xl font-bold">The Map</h2>
      <div className="w-5/6">
        While looking for options I quickly found Leaflet.js which in its basic
        demo, has a map, tiles of your choice, and marker with text. Everything
        I need.
      </div>
      <br />
      <BasicMap />
      <br />
      <div className="w-5/6">
        After getting the basic Leaflet map working{" "}
        <div
          className="tooltip bg-yellow-100"
          data-tip="this was a mistake. I could have just used an image overlay and it would have been a lot easier. I could have avoided a lot of work by just reading more documentation or looking at what other people who had attempted something like this.
if you are looking to do something like this then follow this tutorial instead"
        >
          I got to work making tiles.
        </div>{" "}
        Starting with the runescape map found here.
      </div>
    </>
  );
}
