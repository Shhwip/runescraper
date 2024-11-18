import React from "react";
import { useState, React, useEffect } from "react";

export default function AboutCatalogue() {
  return (
    <>
      <div className="w-5/6">
        <h1 className="text-4xl font-bold text-center">Hush House Catalogue</h1>
        <p className="text-lg">
          The Hush House Catalogue is a web application that displays a
          catalogue for the game{" "}
          <a href="https://store.steampowered.com/app/1028310/BOOK_OF_HOURS/">
            Book of Hours
          </a>
          .
        </p>
        <br></br>
        <h2 className="text-2xl font-bold">The Problem</h2>
      </div>
      <div className="w-5/6">
        The game Book of Hours has many books that need to be organized. In the
        game it gives you a few bookshelves to do so but there are multiple
        attributes that you would want to organize the books by. The one
        dimensionality of bookshelves doesn't allow this. I needed a book
        catalogue that could be filtered by multiple attributes.
      </div>
      <br></br>
      <h2 className="text-2xl font-bold">The Structure</h2>
      <div className="w-5/6">
        I needed to organize my books by name, aspect, memory, memory type,
        whether they are owned/mastered, and where they are located. I needed to also be able to see which memories I had available 
        to me and quickly see which books those memories were associated with.
      </div>
        <br />
        <image src="normalizeddatabase.png" alt="An entity relationship 'diagram' of a normalized database" />
        
    </>
  );
}
