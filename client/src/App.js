import React, { Component } from "react";
import Map from "./components/Map";

class App extends Component {
  state = {
    fires: []
  };

  componentDidMount() {
    fetch("/api/fires")
      .then(res => res.json())
      .then(fires => this.setState({ fires: fires }))
      .catch(err => console.error(err));
  }

  render() {
    return (
      <div className="App">
        <Map points={this.state.fires} />
      </div>
    );
  }
}

export default App;
