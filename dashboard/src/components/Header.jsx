import React from 'react'

const Header = ({category, title}) => {
  return (
    <div className='md-10'>
      <p className='text-gray-400'>
        {category}
      </p>
      <p>{title}</p>
    </div>
  )
}

export default Header