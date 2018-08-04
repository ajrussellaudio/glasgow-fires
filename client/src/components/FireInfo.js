import React from "react";
import { Popup } from "react-leaflet";
import moment from "moment";

const FireInfo = ({ building_name, street_address, date, news_sources }) => (
  <Popup>
    <h3>
      {building_name}, {street_address}
    </h3>
    <p>{moment(date).format("ddd, Do MMM YYYY")}</p>
    <ul>
      {news_sources.map(({ publication, headline, url }) => (
        <li>
          <span>{headline}</span> | <a href={url}>{publication}</a>
        </li>
      ))}
    </ul>
  </Popup>
);

export default FireInfo;
