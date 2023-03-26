import React, { useState } from "react";
import axios from "axios";
import { Link, useNavigate } from "react-router-dom";
import routes from "../constants/apiRoutes";

const LogIn = () => {
	let navigate = useNavigate();
	const [email, setEmail] = useState("");
	const [password, setPassword] = useState("");

	const [isLogInAtteptFail, setLogInAttemtFail] = useState(false);

	const verify = (event) => {
		event.preventDefault();
		if(email==="admin@gmail.com" && password==="admin123"){
			window.location.assign(`${routes.ADMIN}`);
		}
		else{
			axios
			.post(routes.LOGIN, { email: email, password: password })
			.then((response) => {
				if (typeof response.data == "string") {
					setLogInAttemtFail(true);
				} else {
					setLogInAttemtFail(false);
					sessionStorage.setItem("UserId", response.data[0].id);
					navigate("/");
				}
			});
		}
	};

	return (
		<div className="flex w-full justify-center">
			<div className="flex flex-col my-10 w-3/12 items-center">
				<h1 className="text-2xl my-10">
					<b>Log in</b>
				</h1>
				<form className="flex flex-col my-2 w-full">
					<span className={isLogInAtteptFail ? "text-red-700" : "invisible"}>
						*Incorrect email or password
					</span>
					<input
						onChange={(e) => {
							setEmail(e.target.value);
						}}
						className="indent-4 rounded-sm h-12 border-2 border-gray-500"
						type="email"
						placeholder="* Email Address"
						required
					/>
					<input
						onChange={(e) => {
							setPassword(e.target.value);
						}}
						className="indent-4 rounded-sm h-12 border-2 border-gray-500 mt-7"
						type="password"
						placeholder="* Password"
						required
					/>
					<button
						onClick={verify}
						className="rounded-sm h-12 bg-red-800 text-white mt-7"
					>
						LOG IN
					</button>
				</form>
				<Link to="/signup" className="text-gray-400 my-5">
					Create an Account
				</Link>
			</div>
		</div>
	);
};

export default LogIn;
