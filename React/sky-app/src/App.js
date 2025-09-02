    import React from 'react';
    import { BrowserRouter , Routes, Route, Link } from 'react-router-dom';

    const HomePage = () => <h2>Home Page</h2>;
    const AboutPage = () => <h2>About Page</h2>;
    const ContactPage = () => <h2>Contact Page</h2>;

    function App() {
      return (
        <>
          <BrowserRouter>
            <nav>
              <ul>
                <li><Link to="/">Home</Link></li>
                <li><Link to="/about">About</Link></li>
                <li><Link to="/contact">Contact</Link></li>
              </ul>
            </nav>
            <Routes>
              <Route path="/" element={<HomePage />} />
              <Route path="/about" element={<AboutPage />} />
              <Route path="/contact" element={<ContactPage />} />
            </Routes>
          </BrowserRouter>
        </>
      );
    }

    export default App;