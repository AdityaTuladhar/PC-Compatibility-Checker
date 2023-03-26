import React,{useEffect} from 'react'
import {AiOutlineMenu} from 'react-icons/ai'
import {FiShoppingCart} from 'react-icons/fi'
import {FaRegUserCircle} from 'react-icons/fa'
import {BsChatLeft} from 'react-icons/bs'
import {RiNotification3Line} from 'react-icons/ri'
import {MdKeyboardArrowDown} from 'react-icons/md'
import  {TooltipComponent} from '@syncfusion/ej2-react-popups'
import avatar from '../data/avatar.jpg'
import {Cart, Chat, Notification, UserProfile} from '.'
import {useStateContext} from "../contexts/ContextProvider"
import {Engagespot} from "@engagespot/react-component";

const NavButton =({title , customFunc , icon, color, dotColor})=>(
  <TooltipComponent content={title} position="BottomCenter">
    <button type="button" onClick={customFunc} style={{color}} className="relative text-xl rounded-full p-3 hover:bg-light-gray">
      <span style={{background:dotColor}} className="absolute inline-flex rounded-full h-2 w-2 right-2 top-2"/>
      {icon}
    </button>
  </TooltipComponent>
)

const Navbar = () => {
  const {activeMenu, setActiveMenu, isClicked, setIsClicked, handleClick,screenSize,setScreenSize} = useStateContext()

  useEffect(()=>{
    const handleResize = () => setScreenSize(window.innerWidth)

    window.addEventListener('resize', handleResize)

    handleResize()

    return () => window.removeEventListener('resize', handleResize)
  },[])

  useEffect(()=> {
    if(screenSize <=900){
      setActiveMenu(false)
    }
    else{
      setActiveMenu(true)
    }
  }, [screenSize])

  const redirectToLOGIN=()=>{
    window.location = `${process.env.REACT_APP_BACKEND_SERVICE_API}:3000/login`;
  }

  return (
    <div className='flex justify-between p-2 md:mx-6 relative'>
      <NavButton title="Menu" customFunc={()=>setActiveMenu((prevActionMenu)=>!prevActionMenu)} color="blue" icon={<AiOutlineMenu/>}/>
      <div className='flex'>

          <Engagespot
            theme={{colors: {
              brandingPrimary: "blue",
              colorPrimary: "blue",
              colorSecondary: "blue",
          },
          notificationButton:{iconFill:"blue",hoverBackground: "lightgray"}
          
        }}
        
            apiKey = "kt3zg7bdcb8l8f5ys3d2n"
            userId = "Admin"
          />

        <TooltipComponent content="Log out" position="BottomCenter">
          <div className='flex items-center gap-2 cursor-pointer p-1 hover:bg-light-gray rounded-lg' onClick={redirectToLOGIN}>
            <p>
              <span className='text-gray-400 text-14'>Log out</span>
            </p>
          </div>
        </TooltipComponent>

        {isClicked.cart && <Cart/>}
        {isClicked.chat && <Chat/>}
        {isClicked.notification && <Notification/>}
        {isClicked.userProfile && <UserProfile/>}
      </div>
    </div>
  )
}

export default Navbar