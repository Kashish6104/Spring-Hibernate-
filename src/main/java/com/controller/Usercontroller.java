package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.UserEntity;
import com.repository.UserRepository;

@Controller
public class Usercontroller {
	
	@Autowired
	UserRepository userRepository;
	
	
	@GetMapping("createuser")
	public String CreateUser() {
		return "CreateUser";
	}
	
	@GetMapping("/")
	public String index() {
		return "Index";
	}
	
	@GetMapping("listusers")
	public String listuser(Model model) {
		List<UserEntity> users = userRepository.findAll();
		model.addAttribute("users",users);
		return "ListUsers";
	}
	
	@PostMapping("saveuser")
		public String saveuser(UserEntity user) {
		userRepository.save(user);
		return "Index";
	}
	
	@GetMapping("deleteuser")
	public String deleteuser(@RequestParam("id") Integer userId) {
	    userRepository.deleteById(userId);  
	    return "redirect:/listusers";   
	}
	
	
	
	

	
	

}
