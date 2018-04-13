package com.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.User;
@Controller
public class SpringAjaxController {

	//LIST OF USERS
	private List<User> userList = new ArrayList<User>();
	@RequestMapping(value="/AddUser",method=RequestMethod.GET)  
    public String showform() {  
		System.out.println("end of show!!");
        return "AddUser";  
    }  
	
	 @RequestMapping(value="/AddUser",method=RequestMethod.POST)
	 @ResponseBody
	 public String addUser(@ModelAttribute("user") User user,BindingResult result){
	        String returnText;
	        System.out.println(user.getMobile());
	        user.processstring(user.getMobile());
	        System.out.println(user);
	        if(!result.hasErrors()){
	            userList.add(user);
	            System.out.println(userList);
	            returnText = "Your Message is sent Successfully!! Total number of sent SMS are:" + userList.size();
	        }else{
	            returnText = "Sorry, an error has occured Message has not been sent.";
	        }
	        System.out.println("End of Post Method!");
	        return returnText;
	    }
	  @RequestMapping(value="/list", method=RequestMethod.GET)
	    public ModelAndView list(){
		  ModelAndView model= new ModelAndView("list");
		  System.out.println("in showusers!");
		  System.out.println(userList);
		model.addObject("list", userList);
	        return model;
	    } 
}
