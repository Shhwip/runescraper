import { useState, React } from "react";


export default function Sidebar(props) {

  const [isOpen, setIsOpen] = useState(true);
  const toggle = () => {setIsOpen(!isOpen)
    console.log(isOpen)
  };
  if (!isOpen) {
    return (
<div className="drawer drawer-open m-1">
  <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
  <div className="drawer-content p-2">
        {props.children}
  </div>
  <div className="drawer-side m-2">

  <label className="btn btn-circle" onClick={toggle}>
  <svg
    transform="rotate(180)"
    xmlns="http://www.w3.org/2000/svg"
    width="16"
    height="16"
    viewBox="0 0 512 512">
 <polygon xmlns="http://www.w3.org/2000/svg" points="332.668,490 82.631,244.996 332.668,0 407.369,76.493 235.402,244.996 407.369,413.507 "/>  </svg>
</label>
</div>
</div>

    );
  }

  return (
<div className="drawer drawer-open m-1">
  <input id="my-drawer-2" type="checkbox" className="drawer-toggle" />
  <div className="drawer-content p-2">
        {props.children}
  </div>
  <div className="drawer-side bg-base-200 rounded-box w-50">
  <ul className="menu">
  <div className="text-xl">
  <label className="btn btn-circle" onClick={toggle}>
  <svg
    xmlns="http://www.w3.org/2000/svg"
    width="16"
    height="16"
    viewBox="0 0 512 512">
    <polygon points="332.668,490 82.631,244.996 332.668,0 407.369,76.493 235.402,244.996 407.369,413.507 		"/>  </svg>
</label>shhwip.dev</div>
  <hr className="border-t-4 bg-accent "></hr>
  <li><a>About</a></li>
  <li>
    <details open>
      <summary>My Projects</summary>
      <ul>
        <li>
        <details closed="true">
          <summary>Story Safe Wiki</summary>
          <ul>
            <li><a href="https://story-safe-wiki.com/">demo</a></li>
            <li><a>details</a></li>
            <li><a>code</a></li>
            </ul>
          </details>
          </li>
        <li>     
          <details closed="true">
            <summary>RuneScraper</summary>
            <ul>
              <li><a href="/runescraper">demo</a></li>
              <li><a href="/runescraper/about">details</a></li>
              <li><a>code</a></li>
            </ul>
          </details></li>
        <li>
          <details closed="true">
            <summary>Catalogue</summary>
            <ul>
              <li><a href="/catalogue">demo</a></li>
              <li><a href="/catalogue/about">details</a></li>
            </ul>
          </details>
        </li>
      </ul>
    </details>
  </li>
  <li>
    <details open>
      <summary>My Contributions</summary>
      <ul>
        <li>
        <details closed="true">
          <summary>B-Gate</summary>
          <ul>
            <li><a>details</a></li>
            <li><a>code</a></li>
            </ul>
          </details>
          </li>
        <li>     
          <details closed="true">
            <summary>rust-wildbow-scraper</summary>
            <ul>
              <li><a>demo</a></li>
              <li><a>details</a></li>
              <li><a>code</a></li>
            </ul>
          </details></li>
        <li>
          <details closed="true">
            <summary>more?</summary>
            <ul>
              <li><a>Submenu 1</a></li>
              <li><a>Submenu 2</a></li>
            </ul>
          </details>
        </li>
      </ul>
    </details>
  </li>
  <li><a>Currently Reading</a></li>
</ul>
  </div>
</div>
  );
}
