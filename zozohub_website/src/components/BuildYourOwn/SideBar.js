import { isEmpty } from "lodash";
import React from "react";

import { TrashIcon, BadgeCheckIcon } from "@heroicons/react/solid";

import { emptyImageUrl } from "../../constants/generic";

const SideBar = ({
	pcComponents,
	removeCartItem,
	changeQuantity,
	selectPcComopnent,
	addToLocalStorage,
}) => {
	return (
		<>
			<h1 className="d font-medium text-xl mb-5">Selected Parts:</h1>
			{Object.values(pcComponents).map((component, index) => (
				<div key={index} className="card mb-4">
					<div
						className="cursor-pointer mb-1"
						onClick={() => selectPcComopnent(component)}
					>
						{component.label}
					</div>
					{!isEmpty(component.item) ? (
						<>
							<hr />
							<div className="flex mt-2">
								<img
									className="h-10 w-10"
									alt="img"
									src={component.item.image || emptyImageUrl}
								/>
								<div className="pl-3 flex-grow">
									<h3 className="flex">
										{component.item.name}
										{component.item.price ? (
											<div title="Available" className="cursor-pointer">
												<BadgeCheckIcon className="h-5 pl-1 text-green-500" />
											</div>
										) : (
											""
										)}
									</h3>
									<h4>Price: {component.item.price ?? "N/A"}</h4>
									<div className="d flex justify-between items-center mt-2">
										<div>
											<button
												className="button-sm"
												onClick={() => changeQuantity("SUB", component.name)}
											>
												-
											</button>
											<span className="px-3">
												{component.item.quantity ?? 1}
											</span>
											<button
												className="button-sm"
												onClick={() => changeQuantity("ADD", component.name)}
											>
												+
											</button>
										</div>
										<button onClick={() => removeCartItem(component.name)}>
											<TrashIcon className="h-5 text-red-700" />
										</button>
									</div>
								</div>
							</div>
						</>
					) : (
						""
					)}
				</div>
			))}
			<div className="card">
				<div className="flex justify-between font-medium text-lg">
					<span>Total:</span>
					{Object.values(pcComponents).reduce((oldVal, currentVal) => {
						let price =
							(currentVal.item?.price || 0) * (currentVal.item?.quantity || 1);
						return (oldVal += price);
					}, 0)}
					/-
				</div>
			</div>
			<button className="button w-full mt-6" onClick={addToLocalStorage}>
				Add To Cart
			</button>
		</>
	);
};

export default SideBar;
