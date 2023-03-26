import { isEmpty } from "lodash";

import axios from "axios";
import routes from "../constants/apiRoutes";
import React, { useState, useEffect, useContext } from "react";

import { useNavigate } from "react-router-dom";
import { ZozoContext } from "../context/ZozoContext";

const Order = () => {
    const navigate = useNavigate();

    const [values, dispatch] = useContext(ZozoContext);

    const [loading, setLoading] = useState(true);

	useEffect(() => {
		let items = JSON.parse(window.localStorage.getItem("cart"));
        
        let userId = sessionStorage.getItem("UserId");
        if(isEmpty(userId)){
            navigate('/login');
        }
        else{

            items = items.map(({item})=>({
                id: item.id,
                u_id: userId,
                price: item.price * item.quantity,
                comp_id: item.comp_id, 
                quantity: item.quantity,
            }))

             axios.post(routes.ORDERS, items).then(response => {
                 setLoading(false);

                 window.localStorage.setItem("cart", JSON.stringify([]))
                 dispatch({type: 'setCount', value: 0});
             })
    
        }
	}, []);

    return <div className="flex justify-center items-center text-5xl" style={{height: "calc(100vh - 200px)"}}>
        { loading ? 'Orders Processing.' : 'Orders Requested Sucessfully.' }
    </div>;
}

export default Order;