import React, { createContext, useState } from "react";

export const ZozoContext = createContext();

export const ZozoProvider = ({children}) => {
    const cartitems = JSON.parse(window.localStorage.getItem("cart"));

    const [cartItemsCount, setCartItemsCount] = useState((cartitems || []).length );

    const dispatch = (action) => {
        switch(action.type){
            case 'setCount':
                setCartItemsCount(action.value);
            default:
                return;
        }
    }

    return <ZozoContext.Provider value={[{count: cartItemsCount}, dispatch]}>
        {children}
    </ZozoContext.Provider>
}