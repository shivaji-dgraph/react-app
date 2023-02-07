import logo from './logo.svg';
import './App.css';
import {useEffect, useState} from 'react';

function App() {
  const [data, setData] = useState("");

  const fetchData = () => {
    return fetch("https://localhost:4000")
          .then((response) => response.json())
          .then((data) => setData(data));
  }
console.log(data)
  useEffect(() => {
    fetchData();
  },[])
  return (
    <div className="App">
      <h1>{data}</h1>
    </div>
  );
}

export default App;
