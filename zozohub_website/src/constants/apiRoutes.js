const routes = {
	LOGIN: ":3001/login",
	LOGIN_PAGE: ":3000/login",
	ORDERS: ":3001/orders",
	ADMIN: ":3002/orders",
	REGISTER: ":3001/register",
	COMPONENTS: ":5050/zozo-hub",
	COMPONENT: ":5051/indivisual-data",
	ALL_COMPONENTS: ":3001/all_component",
	COMPATIBIBLITY_CHECK: ":5000/compatibility-check",
};

Object.entries(routes).forEach(([key, value]) => {
	routes[key] = `${process.env.REACT_APP_BACKEND_SERVICE_API}${value}`;
});

export default routes;
