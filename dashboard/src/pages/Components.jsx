import React,{useState,useEffect} from 'react'
import {GridComponent,ColumnsDirective, ColumnDirective, Page,Selection,Inject,Edit,Toolbar,Sort,Filter} from '@syncfusion/ej2-react-grids'
import {Header} from "../components"
import {componentsGrid} from '../data/dummy'
import axios from 'axios'

const pcComponents = {
  cpu : "CPU",
  cpu_cooler: "CPU Cooler",
  graphics_card: "Graphics Card",
  memory: "Memory",
  motherboard: "Motherboard",
  pc_case: "PC Case",
  psu: "PSU",
  storage: "Storage",
}


const Components = () => {
  const [isAdd, setIsAdd] = useState(false)
  const [isEdit, setIsEdit] = useState(false)
  const [componentName, setComponentName] = useState('cpu');

  const getValueAxios = async (comp) => {
    try {
      let resGet = await axios.get(`http://localhost:3001/${comp}`)
  
      setComponentsData(resGet.data);
    } catch (error) {
      console.log(error);
    }
  }
  
  const [componentsData, setComponentsData] = useState([])

  useEffect(() => {
    getValueAxios(componentName)  
  },[])

  const onComponentNameChange = async (event) => {
    setComponentName(event.target.value);
    getValueAxios(event.target.value);
  }

  const deleteValueAxios = async (id) => {
    try {
      await axios.delete(`http://localhost:3001/${componentName}/${id}`)
    } catch (error) {
      console.log(error);
    }
  }

  const updateValueAxios = async (data) => {
    try {
      await axios.patch(`http://localhost:3001/${componentName}`,data)
    } catch (error) {
      console.log(error);
    }
  }

  const addValueAxios = async (data) => {
    try {
      await axios.post(`http://localhost:3001/${componentName}`,data)
      getValueAxios(componentName)
    } catch (error) {
      console.log(error);
    }
  }
  
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
    <div>
      <div>
        <select name="component" value={componentName} className='text-sm ml-20 mt-10' onChange={onComponentNameChange}>
          {Object.entries(pcComponents).map(([key, value]) => <option class='text-sm' value={key}>{value}</option>)}
        </select>
      </div>
      <div className="ml-2 md:ml-10 md:mt-2 mt-24 p-2 md:px-10 bg-white rounded-3xl">
      <Header category="Page" title={pcComponents[componentName]}/>
      <GridComponent
        dataSource={componentsData}
        width="auto"
        allowPaging
        allowSorting
        toolbar={['Delete','Add','Edit','Update','Search']}
        editSettings={{allowDeleting:true, allowEditing:true,allowAdding:true}}
        actionBegin={actionBegin} 
      >
        <ColumnsDirective>
          {/* eslint-disable-next-line react/jsx-props-no-spreading */}
          {componentsGrid.map((item, index) => <ColumnDirective key={index} {...item} />)}
        </ColumnsDirective>
        <Inject services={[Page,Toolbar,Selection,Edit,Sort,Filter]} />

      </GridComponent>
    </div>
    </div>
  )
}

export default Components