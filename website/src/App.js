import { useState, React, useEffect } from "react";
import { Routes, Route, Link } from "react-router-dom";
import Runescape from "./pages/runescraper";
import Sidebar from "./components/sidebar";
import AboutRunescraper from "./pages/about_runescraper";
import Catalogue from "./pages/hush_house_catalogue";
import AboutCatalogue from "./pages/about_catalogue";

export function App() {



  return (
    <Sidebar>
    <Routes>
        <Route path="/" element={<Catalogue />} />
        <Route path="/runescraper" element={<Runescape />} />
        <Route path="/runescraper/about" element={<AboutRunescraper />} />
        <Route path="/catalogue" element={<Catalogue />} />
        <Route path="/catalogue/about" element={<AboutRunescraper />} />
      </Routes>
    </Sidebar>

  );
}
