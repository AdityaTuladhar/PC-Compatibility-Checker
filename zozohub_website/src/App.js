import Nav from "./components/Nav";

import pageRoutes from "./routes";
import Footer from "./components/Footer";
import { ZozoProvider } from "./context/ZozoContext";

import "./App.css";

import { BrowserRouter, Route, Routes } from "react-router-dom";

function App() {
	return (
		<BrowserRouter>
			<ZozoProvider>
				<Nav></Nav>
				<Routes>
					{pageRoutes?.map((route, index) => (
						<Route
							key={index}
							path={route.path}
							exact={route.exact}
							element={route.element}
						></Route>
					))}
				</Routes>
				<Footer></Footer>
			</ZozoProvider>
		</BrowserRouter>
	);
}

export default App;
