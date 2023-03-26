import React,{useState,useEffect} from 'react'
import {GridComponent,ColumnsDirective, ColumnDirective, Page,Selection,Inject,Edit,Toolbar,Sort,Filter} from '@syncfusion/ej2-react-grids'
import {Header} from "../components"
import { DataManager } from '@syncfusion/ej2-data'
import { DropDownList } from '@syncfusion/ej2-react-dropdowns';
import {ordersGrid} from '../data/dummy'
import axios from 'axios'

const Orders = () => {
  const getValueAxios = async () => {
    try {
      let resGet = await axios.get('http://localhost:3001/orders')

      setOrderData(resGet.data);
    } catch (error) {
      console.log(error);
    }
  }

  const deleteValueAxios = async (id) => {
    try {
      await axios.delete(`http://localhost:3001/orders/${id}`)
    } catch (error) {
      console.log(error);
    }
  }

  const updateValueAxios = async (data) => {
    try {
      await axios.patch("http://localhost:3001/orders",data)
    } catch (error) {
      console.log(error);
    }
  }

  const [orderData, setOrderData] = useState([])
  useEffect(() => {
    getValueAxios()  
  },[])

  const actionBegin = (args) => { 
    if (args.requestType === "delete") { //triggers while deleting the record 
      for (var i = 0; i < args.data.length; i++) {
        deleteValueAxios(args.data[i].id);
    }
    }
    if (args.requestType === "save") {
      updateValueAxios(args.data)
    } 
  }

  return (
    <div className="m-2 md:m-10 mt-24 p-2 md:p-10 bg-white rounded-3xl">
      <Header category="Page" title="Orders"/>
      <GridComponent
      dataSource={orderData}
      width="auto"
      allowPaging
      allowSorting
      toolbar={['Delete','Edit','Update','Search']}
      editSettings={{allowDeleting:true, allowEditing:true}}
      actionBegin={actionBegin} 
      >
        <ColumnsDirective>
            {/* eslint-disable-next-line react/jsx-props-no-spreading */}
            {ordersGrid.map((item, index) => <ColumnDirective key={index}
             {...item} />)}
        </ColumnsDirective>
        <Inject services={[Page,Toolbar,Selection,Edit,Sort,Filter]} />
      </GridComponent>
    </div>
  )
}

export default Orders