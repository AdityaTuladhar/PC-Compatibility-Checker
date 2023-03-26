import axios from "axios";
import React, { useContext, useEffect, useState } from "react";

import { isEmpty } from "lodash";

import Pagination from "@mui/material/Pagination";

import routes from "../constants/apiRoutes";
import { emptyImageUrl, PC_ALL_COMPONENTS } from "../constants/generic";

import { formatComponentDetail } from "../utils/formatComponentDetail";
import { ZozoContext } from "../context/ZozoContext";

const SideBar = ({ pcComponents, selectPcComopnent, selectedComponent }) => {
	return (
		<>
			<h1 className="d font-medium text-xl mb-5">Components List:</h1>
			{Object.values(pcComponents).map((component, index) => (
				<div
					key={index}
					className="card mb-4"
					style={{
						backgroundColor:
							component.label === selectedComponent.label
								? "rgb(153, 27, 27)"
								: "white",
						color:
							component.label === selectedComponent.label ? "white" : "black",
					}}
				>
					<div
						className="cursor-pointer mb-1"
						onClick={() => selectPcComopnent(component)}
					>
						{component.label}
					</div>
				</div>
			))}
		</>
	);
};

const PcComponent = () => {
	const [values, dispatch] = useContext(ZozoContext);
	const [cartItems, setCartItems] = useState(PC_ALL_COMPONENTS);
	const [selectedComponent, setSelectedComponent] = useState(
		PC_ALL_COMPONENTS.ALL_COMPONENTS
	);

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

			let linkRoute = "";
			if (selectedComponent.name === PC_ALL_COMPONENTS.ALL_COMPONENTS.name) {
				linkRoute = routes.ALL_COMPONENTS;
			} else {
				linkRoute = `${routes.COMPONENTS}?search=${selectedComponent.name}`;
			}

			await axios.get(linkRoute).then(({ data }) => {
				setItems(data);
				setItemOffset(1);
				setSearchTerm("");
				setFilteredItems(data);
			});

			setIsLoading(false);
		};
		fetchData();
	}, [selectedComponent]);

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

	const addToLocalStorage = async (component) => {
		let newItem = { ...selectedComponent, item: { ...component, quantity: component.quantity || 1} };

		const newCart = JSON.parse(window.localStorage.getItem("cart")) || [];

		let index = newCart.findIndex((cartitem2) => {
			return cartitem2?.item?.name === newItem?.item?.name;
		});

		if (index >= 0) {
			newCart[index].item.quantity =
				newCart[index].item.quantity + newItem.item.quantity;
		} else {
			newCart.push(newItem);
		}

		await window.localStorage.setItem("cart", JSON.stringify(newCart));

		dispatch({type: 'setCount', value: newCart.length});
	}

	const updateCount = (action, component) => {
		setCurrentItems((prevItems) => {
			const newItems = prevItems.map((item) => {
				if(item.id === component.id){
					switch(action){
						case 'add':
							if(item.quantity){
								item.quantity += 1;
							}else {
								item.quantity = 2;
							}
							console.log(item)
							break;
						case 'sub':
							if(item.quantity){
								if(item.quantity > 1){
									item.quantity -= 1;
								}
							}else {
								item.quantity = 1;
							}
							break;
					}
				}
				return item;
			})
			return [ ...newItems ];
		})
	}

	return (
		<div className="flex box-border px-4 mt-8">
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
					{currentItems?.map((component, index) => {
						return (
							<div className="card mb-4" key={index}>
								<div className="flex">
									<img
										className="h-36 w-36 pr-6"
										alt="img"
										src={component.image || emptyImageUrl}
									/>
									<div>
										<h3 className="text-2xl pb-2">{component.name}</h3>
										{formatComponentDetail(component.details)?.map(
											(item, index2) => {
												return (
													<div key={index2}>
														<span className="font-semibold">{item[0]}</span>:{" "}
														{item[1]}
													</div>
												);
											}
										)}
										<div>
											<span className="font-semibold">Price</span>:{" "}
											<span className="font-semibold">
												{"Rs."}
												{component.price}
											</span>
										</div>

										<div>
											<button
												className="button-sm"
												onClick={() => updateCount('sub', component)}
											>
												-
											</button>
											<span className="px-3">{component.quantity || 1}</span>
											<button
												className="button-sm"
												onClick={() => updateCount('add', component)}
											>
												+
											</button>
										</div>
										
										<button className="button-bordered mt-5" onClick={() => addToLocalStorage(component)}>Add To Cart</button>
									</div>
								</div>
							</div>
						);
					})}
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
					selectedComponent={selectedComponent}
					selectPcComopnent={selectPcComopnent}
				/>
			</div>
		</div>
	);
};

export default PcComponent;
