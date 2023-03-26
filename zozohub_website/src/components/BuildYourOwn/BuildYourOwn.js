import axios from "axios";
import React, { useContext, useEffect, useState } from "react";

import { useNavigate } from "react-router-dom";
import { isEmpty } from "lodash";

import Pagination from "@mui/material/Pagination";

import SideBar from "./SideBar";

import routes from "../../constants/apiRoutes";
import { emptyImageUrl, PC_COMPONENTS } from "../../constants/generic";

import { formatComponentDetail } from "../../utils/formatComponentDetail";
import {BadgeCheckIcon } from "@heroicons/react/solid";
import { ZozoContext } from "../../context/ZozoContext";

const BuildYourOwn = () => {
	const navigate = useNavigate();
	const [values, dispatch] = useContext(ZozoContext);

	const [cartItems, setCartItems] = useState(PC_COMPONENTS);
	const [selectedComponent, setSelectedComponent] = useState(PC_COMPONENTS.CPU);

	const [items, setItems] = useState([]);
	const [currentItems, setCurrentItems] = useState([]);
	const [filteredItems, setFilteredItems] = useState([]);

	const [pageCount, setPageCount] = useState(0);
	const [itemOffset, setItemOffset] = useState(1);

	const [isLoading, setIsLoading] = useState(false);

	const [searchTerm, setSearchTerm] = useState("");

	const itemsPerPage = 8;

	useEffect(() => {
		const fetchData = async () => {
			setIsLoading(true);

			await axios
				.get(
					`${routes.COMPATIBIBLITY_CHECK}?psu=${
						cartItems.PSU?.item?.name ?? ""
					}&pc_case=${cartItems.PC_CASE?.item?.name ?? ""}&cpu_cooler=${
						cartItems.CPU_COOLER?.item?.name ?? ""
					}&storage=${cartItems.STORAGE?.item?.name ?? ""}&memory=${
						cartItems.MEMORY?.item?.name ?? ""
					}&cpu=${cartItems.CPU?.item?.name ?? ""}&graphics_card=${
						cartItems.GRAPHICS_CARD?.item?.name ?? ""
					}&motherboard=${cartItems.MOTHERBOARD?.item?.name ?? ""}&search=${
						selectedComponent.name
					}`
				)
				.then(({ data }) => {
					setItems(data);
					setItemOffset(1);
					setSearchTerm("");
					setFilteredItems(data);
				});

			setIsLoading(false);
		};

		fetchData();
	}, [selectedComponent, cartItems]);

	useEffect(() => {
		const endOffset = (itemOffset - 1) * itemsPerPage + itemsPerPage - 1;

		setCurrentItems(
			filteredItems.slice((itemOffset - 1) * itemsPerPage, endOffset)
		);
		setPageCount(Math.ceil(filteredItems.length / itemsPerPage));
	}, [itemOffset, items, filteredItems]);

	const handlePaginationClick = (_, value) => {
		setItemOffset(value);
	};

	const selectPcComopnent = (newPcComponent) => {
		setSelectedComponent(newPcComponent);
	};

	const selectCartItem = async (newPcComponent) => {
		await axios
			.get(
				`${routes.COMPONENT}?component=${selectedComponent.name}&unique_name=${newPcComponent.name}`
			)
			.then(({ data }) => {
				let dataItem = data[0] || {};
				dataItem.quantity = 1;

				setCartItems((oldVal) => {
					let newVal = { ...oldVal };
					newVal[selectedComponent.name.toUpperCase()].item = dataItem;

					return newVal;
				});
			});
	};

	const changeQuantity = (actionName, componentName) => {
		setCartItems((oldVal) => {
			let newVal = { ...oldVal };
			let { quantity = 1 } = newVal[componentName.toUpperCase()].item;

			switch (actionName) {
				case "ADD":
					quantity += 1;
					break;
				case "SUB":
					if (quantity > 1) quantity -= 1;
					break;
				default:
					break;
			}
			newVal[componentName.toUpperCase()].item.quantity = quantity;

			return newVal;
		});
	};

	const removeCartItem = async (pcComponent) => {
		setCartItems((oldVal) => {
			let newVal = { ...oldVal };
			delete newVal[pcComponent.toUpperCase()].item;

			return newVal;
		});
	};

	const addToLocalStorage = async () => {
		const newCart = JSON.parse(window.localStorage.getItem("cart")) || [];

		Object.values(cartItems).forEach((cart) => {
			if (cart?.item?.price) {
				let index = newCart.findIndex((cartitem2) => {
					return cartitem2?.item?.name === cart?.item?.name;
				});

				if (index >= 0) {
					newCart[index].item.quantity =
						newCart[index].item.quantity + cart.item.quantity;

					return;
				}

				newCart.push(cart);
			}
		});

		await window.localStorage.setItem("cart", JSON.stringify(newCart));
		dispatch({type: 'setCount', value: newCart.length});

		navigate("/cart");
	};

	const onInputChange = (event) => {
		setSearchTerm(event.target.value);
	};

	const onSearch = (event) => {
		if (event.keyCode === 13) {
			if (isEmpty(searchTerm)) {
				setFilteredItems(items);

				return;
			}

			const newValue = items.filter((item) =>
				item.name?.toLowerCase().includes(searchTerm.toLowerCase())
			);
			setFilteredItems(newValue);
		}
	};

	return (
		<div className="flex box-border mt-8 px-10">
			<div className="box-border w-3/4 pr-4">
				<input
					type="text"
					value={searchTerm}
					onKeyDown={onSearch}
					onChange={onInputChange}
					className="w-full border-2 border-solid rounded-full px-4 py-1 border-gray-400"
					placeholder="Search ..."
				/>

				<h1 className="text-4xl pt-6 font-semibold">
					{selectedComponent.label}
				</h1>

				<div className="mt-4">
					{isLoading ? (
						<div> Loading ... </div>
					) : (
						currentItems?.map((component, index) => {
							return (
								<div className="card mb-4" key={index}>
									<div className="flex">
										<img
											className="h-36 w-36 pr-6"
											alt="img"
											src={component.image || emptyImageUrl}
										/>
										<div>
											<h3 className="text-2xl pb-2 flex">{component.name}
											{component.isAvailable ? (
											<div title="Available" className="cursor-pointer">
												<BadgeCheckIcon className="h-5 pl-1 text-green-500" />
											</div>
										) : (
											""
										)}
											</h3>
											<div className="mb-4">
												{formatComponentDetail(component.details)?.map(
													(item, index2) => {
														return (
															<div key={index2}>
																<span className="font-semibold">{item[0]}</span>
																: {item[1]}
															</div>
														);
													}
												)}
												{
													component.price? <div>
														<span className="font-semibold">Price</span>: {component.price}
													</div>: ''
												}
												
											</div>
											<button
												className="button-bordered"
												onClick={() => selectCartItem(component)}
											>
												Select
											</button>
										</div>
									</div>
								</div>
							);
						})
					)}
				</div>
				<div className="flex justify-center pb-8">
					<Pagination
						shape="rounded"
						count={pageCount}
						page={itemOffset}
						variant="outlined"
						onChange={handlePaginationClick}
					/>
				</div>
			</div>
			<div className="w-1/4 box-border">
				<SideBar
					pcComponents={cartItems}
					removeCartItem={removeCartItem}
					changeQuantity={changeQuantity}
					selectPcComopnent={selectPcComopnent}
					addToLocalStorage={addToLocalStorage}
				/>
			</div>
		</div>
	);
};

export default BuildYourOwn;
