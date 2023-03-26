import React,{useState,useEffect} from 'react'
import {GridComponent,ColumnsDirective, ColumnDirective, Page,Selection,Inject,Edit,Toolbar,Sort,Filter} from '@syncfusion/ej2-react-grids'
import {Header} from "../components"
import {customersGrid} from '../data/dummy'
import axios from 'axios'

const Customers = () => {
  const [isAdd, setIsAdd] = useState(false)
  const [isEdit, setIsEdit] = useState(false)

  const getValueAxios = async () => {
    try {
      let resGet = await axios.get('http://localhost:3001/customerInfo')

      setCustomersData(resGet.data);
    } catch (error) {
      console.log(error);
    }
  }

  const deleteValueAxios = async (id) => {
    try {
      await axios.delete(`http://localhost:3001/customerInfo/${id}`)
    } catch (error) {
      console.log(error);
    }
  }
  
  const updateValueAxios = async (data) => {
    try {
      await axios.patch("http://localhost:3001/customerInfo",data)
    } catch (error) {
      console.log(error);
    }
  }

  const addValueAxios = async (data) => {
    try {
      await axios.post("http://localhost:3001/customerInfo",data)
      getValueAxios()
    } catch (error) {
      console.log(error);
    }
  }

  const [customersData, setCustomersData] = useState([])
  useEffect(() => {
    getValueAxios()  
  },[])
  
  const actionBegin = (args) => { 
    if (args.requestType === "delete") { //triggers while deleting the record 
      for (var i = 0; i < args.data.length; i++) {
        deleteValueAxios(args.data[i].id);
    }
    } 
    if (args.requestType === "save") { //triggers while adding the record 
      if(isEdit){
        updateValueAxios(args.data)
      }
      else if(isAdd){
        addValueAxios(args.data)
      }
    } 
    if (args.requestType === "add"){
      setIsEdit(false)
      setIsAdd(true)
    }
    if (args.requestType === "beginEdit"){
      setIsEdit(true)
      setIsAdd(false)
  }
  } 


  return (
    <div className="m-2 md:m-10 mt-24 p-2 md:p-10 bg-white rounded-3xl">
      <Header category="Page" title="Customers" />
      <GridComponent
        dataSource={customersData}
        width="auto"
        allowPaging
        allowSorting
        toolbar={['Delete','Add','Edit','Update','Search']}
        editSettings={{allowDeleting:true, allowEditing:true,allowAdding:true}}
        actionBegin={actionBegin} 
      >
        <ColumnsDirective>
          {/* eslint-disable-next-line react/jsx-props-no-spreading */}
          {customersGrid.map((item, index) => <ColumnDirective key={index} {...item} />)}
        </ColumnsDirective>
        <Inject services={[Page,Toolbar,Selection,Edit,Sort,Filter]} />

      </GridComponent>
    </div>
  )
}

export default Customers