import React, { useContext } from "react";
import { NavLink, Link, useNavigate} from "react-router-dom";
import { ShoppingCartIcon, UserIcon } from "@heroicons/react/outline";	
import { ZozoContext } from "../context/ZozoContext";
import ZozoLogo from "../img/zz_logo.png";

const Nav = () => {
	const [value, dispatch] = useContext(ZozoContext);

	let navigate = useNavigate();
	const logOut = () => {
		sessionStorage.removeItem("UserId")
		navigate("/login")
	}

	return (
		<nav>
			<div className="bg-red-800 text-white">
				<div className="flex align-middle justify-between px-10">
					<div className="flex">
						<div className="bg-white mr-12 px-4">
							<img
								alt="logo"
								className="h-11"
								src={ZozoLogo}
							/>
						</div>

						<NavLink
							to="/"
							className={({ isActive }) =>
								isActive ? "nav-link-active" : "nav-link"
							}
						>
							PC components
						</NavLink>
						<NavLink
							to="/pc-builder"
							className={({ isActive }) =>
								isActive ? "nav-link-active" : "nav-link"
							}
						>
							Build your Pc's
						</NavLink>
						<NavLink
							to="/aboutus"
							className={({ isActive }) =>
								isActive ? "nav-link-active" : "nav-link"
							}
						>
							About Us
						</NavLink>
					</div>

					<div className="flex">
						{
							!sessionStorage.getItem("UserId")?
							<Link to="/login" className="flex items-center mr-6">
								<UserIcon className="h-6 text-white" />
							</Link>:
							<div className="flex items-center mr-6">
								<button onClick={logOut}>Log Out</button>
							</div>
						}			

						<Link to="/cart" className="flex items-center">
							<ShoppingCartIcon className="h-6 text-white" />
							{value.count}
						</Link>
					</div>
				</div>
			</div>
		</nav>
	);
};

export default Nav;
