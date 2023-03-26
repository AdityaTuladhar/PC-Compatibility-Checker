import React, { useContext, useEffect, useState } from "react";

import { Link } from "react-router-dom";

import { TrashIcon } from "@heroicons/react/outline";
import { ZozoContext } from "../../context/ZozoContext";

const Cart = () => {
	const [values, dispatch] = useContext(ZozoContext);
	
	const [cartItems, setCartItems] = useState([]);

	useEffect(() => {
		let items = JSON.parse(window.localStorage.getItem("cart"));

		setCartItems(items);
	}, []);

	return (
		<div className="flex flex-col box-border px-4 mt-8"
		style={{ minHeight: "calc(100vh - 200px)"}}>
			<h1 className="text-4xl pb-6 font-semibold">Shopping Cart</h1>
			<table>
				<thead>
					<tr>
						<th>Item</th>
						<th>Price</th>
						<th>Quantity</th>
						<th>Subtotal</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					{cartItems.map((item, index) => (
						<tr key={index}>
							<td>{item.item.name}</td>
							<td className="text-center">{item.item.price}</td>
							<td className="text-center">
								<button
									className="button-sm"
									onClick={() => {
										const storageItems =
											JSON.parse(window.localStorage.getItem("cart")) || [];

										const newItems = storageItems.map((storageItem) => {
											if (storageItem.item.name === item.item.name) {
												if (storageItem.item.quantity > 1)
													storageItem.item.quantity -= 1;
											}

											return storageItem;
										});

										setCartItems(newItems);

										window.localStorage.setItem(
											"cart",
											JSON.stringify(newItems)
										);
										dispatch({type: 'setCount', value: newItems.length});
									}}
								>
									-
								</button>
								<span className="px-3">{item.item.quantity}</span>
								<button
									className="button-sm"
									onClick={() => {
										const storageItems =
											JSON.parse(window.localStorage.getItem("cart")) || [];

										const newItems = storageItems.map((storageItem) => {
											if (storageItem.item.name === item.item.name) {
												storageItem.item.quantity += 1;
											}

											return storageItem;
										});

										setCartItems(newItems);

										window.localStorage.setItem(
											"cart",
											JSON.stringify(newItems)
										);
										dispatch({type: 'setCount', value: newItems.length});
									}}
								>
									+
								</button>
							</td>
							<td className="text-center">
								{item.item.price * item.item.quantity}
							</td>
							<td>
								<TrashIcon
									className="h-6 text-gray-500 hover:text-red-700 cursor-pointer"
									onClick={() => {
										const storageItems =
											JSON.parse(window.localStorage.getItem("cart")) || [];

										const newItems = storageItems.filter((storageItem) => {
											if (storageItem.item.name === item.item.name) {
												return false;
											}

											return true;
										});

										setCartItems(newItems);

										window.localStorage.setItem(
											"cart",
											JSON.stringify(newItems)
										);
										dispatch({type: 'setCount', value: newItems.length});
									}}
								/>
							</td>
						</tr>
					))}
				</tbody>
			</table>
			{cartItems.length? <div className="flex mt-6 justify-end align-middle">
					<strong className="text-gray-600 mr-5 text-lg">
						Total: Rs{" "}
						{cartItems.reduce((previousValue, currentItem) => {
							previousValue += currentItem.item.price * currentItem.item.quantity;

							return previousValue;
						}, 0)}
						/-
					</strong>
					<Link to="/order" className="button">Proceed To Checkout</Link>
				</div>
			: <div className="jj text-center text-4xl pt-40">Your Cart is Empty.</div>}
			
		</div>
	);
};

export default Cart;
