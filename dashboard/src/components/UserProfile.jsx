import React, {useEffect} from 'react'

function UserProfile() {
  useEffect(()=>{
    window.location = `${process.env.REACT_APP_BACKEND_SERVICE_API}:3000/login`;
  }, [])
  
  return (
    <div>UserProfile</div>
  )
}

export default UserProfile