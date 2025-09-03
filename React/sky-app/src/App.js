import React from 'react';
import { BrowserRouter, Routes, Route, Link } from 'react-router-dom';
import Counter from './hooks';

const HomePage = () => <h2>Home Page</h2>;
const AboutPage = () => <h2>About Page</h2>;
const ContactPage = () => <h2>Contact Page</h2>;
const CounterPage = () => (
  <>
    <h2>Counter</h2>
    <h2><Counter /></h2>
  </>
);

const HooksPage = () => (
  <>
    <h2>Hooks</h2>
    <nav>
      <ul>
        <li><Link to="/hooks/counter">Counter</Link></li>
      </ul>
    </nav>
  </>
);

function App() {
  return (
    <BrowserRouter>
      <nav>
        <ul>
          <li><Link to="/">Home</Link></li>
          <li><Link to="/about">About</Link></li>
          <li><Link to="/contact">Contact</Link></li>
          <li><Link to="/hooks">Hooks</Link></li>
        </ul>
      </nav>
      <Routes>
        <Route path="/" element={<HomePage />} />
        <Route path="/about" element={<AboutPage />} />
        <Route path="/contact" element={<ContactPage />} />
        <Route path="/hooks" element={<HooksPage />} />
        <Route path="/hooks/counter" element={<CounterPage />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
