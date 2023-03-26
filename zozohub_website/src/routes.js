import Cart from "./components/Cart";
import Order from "./components/Order";
import LogIn from "./components/LogIn";
import SignUp from "./components/SignUp";
import AboutUs from "./components/AboutUs";
import PcComponent from "./components/PcComponent";
import BuildYourOwn from "./components/BuildYourOwn";

const pageRoutes = [
	{ path: "/cart", element: <Cart />, exact: true },
	{ path: "/login", element:<LogIn />, exact: true },
	{ path: "/order", element: <Order />, exact: true },
	{ path: "/signup", element:<SignUp />, exact: true },
	{ path: "/", element: <PcComponent />, exact: true },
	{ path: "/aboutus", element:<AboutUs />, exact: true },
	{ path: "/pc-builder", element: <BuildYourOwn />, exact: true },
];

export default pageRoutes;
