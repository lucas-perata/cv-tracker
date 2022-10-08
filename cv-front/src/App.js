import "./App.css";
import axios from "axios";
import { useEffect, useState } from "react";
import Applications from "./components/Applications/Applications";

const API_URL = "http://localhost:3000/api/v1/applications";

function getAPIData() {
  return axios.get(API_URL).then((response) => response.data);
}

function App() {
  const [applications, setApplications] = useState([]);

  useEffect(() => {
    getAPIData().then((items) => {
      setApplications(items);
    });
  }, []);
  return (
    <div className="App">
      <Applications apps={applications} />
    </div>
  );
}

export default App;
