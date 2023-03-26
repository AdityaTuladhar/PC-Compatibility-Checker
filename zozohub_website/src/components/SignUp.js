import React, { useState } from "react";
import axios from "axios";
import { Link } from "react-router-dom";
import routes from "../constants/apiRoutes";

const SignUp = () => {
	const [firstNameReg, setFirstNameReg] = useState("");
	const [lastNameReg, setLastNameReg] = useState("");
	const [phoneReg, setPhoneReg] = useState("");
	const [emailReg, setEmailReg] = useState("");
	const [passwordReg, setPasswordReg] = useState("");
	const [rePasswordReg, setRePasswordReg] = useState("");

	const [isFirstNameError, setFirstNameError] = useState(false);
	const [isLasttNameError, setLasttNameError] = useState(false);
	const [isPhoneError, setPhoneError] = useState(false);
	const [isEmailError, setEmailError] = useState(false);
	const [isPasswordError, setPasswordError] = useState(false);
	const [isRePasswordError, setRePasswordError] = useState(false);

	const [isSignUpSuccessful, setSignUpSuccessful] = useState(false);

	const register = async(event) => {
		event.preventDefault();

		const validName = new RegExp("^[A-Za-z]+$");
		const validEmail = new RegExp(
			"^[a-zA-Z0-9._:$!%-]+@[a-zA-Z0-9.-]+.[a-zA-Z]$"
		);
		const validPassword = new RegExp("^(?=.*?[A-Za-z])(?=.*?[0-9]).{6,}$");
		const validPhone = new RegExp("^[0-9]{10}$");

		if (!validName.test(firstNameReg)) {
			setFirstNameError(true);
		} else {
			setFirstNameError(false);
		}
		if (!validName.test(lastNameReg)) {
			setLasttNameError(true);
		} else {
			setLasttNameError(false);
		}
		if (!validPhone.test(phoneReg)) {
			setPhoneError(true);
		} else {
			setPhoneError(false);
		}
		if (!validEmail.test(emailReg)) {
			setEmailError(true);
		} else {
			setEmailError(false);
		}
		if (!validPassword.test(passwordReg)) {
			setPasswordError(true);
		} else {
			setPasswordError(false);
		}
		if(passwordReg !== rePasswordReg){
			setRePasswordError(true);
		} else {
			setRePasswordError(false);
		}
		if(validName.test(firstNameReg) && validName.test(lastNameReg) && validPhone.test(phoneReg) && validEmail.test(emailReg) && validPassword.test(passwordReg) && (passwordReg === rePasswordReg)){
			try{
				let getEmail = await axios.get(`http://localhost:3001/validEmail/${emailReg}`)
				if(getEmail.data.length===0){
					try{
						axios.post(routes.REGISTER, {firstName:firstNameReg,lastName:lastNameReg, phoneNumber:phoneReg , email:emailReg, password:passwordReg})
						setSignUpSuccessful(true)
					}
					catch{
						setSignUpSuccessful(false)
					}
				}
				else{
					setEmailError(true);
				}
			}
			catch(error){
				console.log(error);
			}		
		}
	};

	return (
		<div className='flex w-full justify-center'>
			{isSignUpSuccessful?
			<div className="text-center">
				<p className="text-5xl mt-20">Account successfully created.</p>
				<p className="text-2xl mt-10">Please try to <Link to="/login" class="text-red-500">LogIn</Link>.</p>
			</div>:
			<div className='flex flex-col my-10 w-3/12 items-center'>
				<h1 className='text-2xl my-10'><b>Create a New Account</b></h1>
				<form className='flex flex-col my-2 w-full'>
					{isFirstNameError}
					<input onChange={(e)=>{setFirstNameReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500' type='text' placeholder='* First Name' required/>
					<span className={isFirstNameError? 'text-red-700': 'invisible'}>*Invalid first name</span>
					<input onChange={(e)=>{setLastNameReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500 mt-1' type='text' placeholder='* Last Name' required/>
					<span className={isLasttNameError? 'text-red-700': 'invisible'}>*Invalid last name</span>
					<input onChange={(e)=>{setEmailReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500 mt-1' type='email' placeholder='* Email Address' required/>
					<span className={isEmailError? 'text-red-700': 'invisible'}>*Invalid email address</span>
					<input onChange={(e)=>{setPhoneReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500 mt-1' type='text' placeholder='* Phone Number' required/>
					<span className={isPhoneError? 'text-red-700': 'invisible'}>*Invalid Phone Number</span>
					<input onChange={(e)=>{setPasswordReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500 mt-1' type='password' placeholder='* Password' required/>
					<span className={isPasswordError? 'text-red-700': 'invisible'}>*Weak password</span>
					<input onChange={(e)=>{setRePasswordReg(e.target.value)}} className='indent-4 rounded-sm h-12 border-2 border-gray-500 mt-1' type='password' placeholder='* Confirm Password' required/>
					<span className={isRePasswordError? 'text-red-700': 'invisible'}>*Retyped password and password are not same</span>
					<button onClick={register}  className='rounded-sm h-12 bg-red-800 text-white mt-1'>CREATE AN ACCOUNT</button>
				</form>
				<Link to="/login" className="text-gray-400 mt-3">&#8592; Go back to LogIn</Link>
			</div>
		}	
		</div>
	);
};

export default SignUp;
