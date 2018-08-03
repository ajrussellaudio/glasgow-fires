import React from "react";
import { Popup } from "react-leaflet";
import moment from "moment";

const FireInfo = ({ building_name, street_address, date }) => (
  <Popup>
    <h3>{building_name}</h3>
    <p>{street_address}</p>
    <p>Date: {moment(date).format("ddd, Do MMM YYYY")}</p>
  </Popup>
);

export default FireInfo;
