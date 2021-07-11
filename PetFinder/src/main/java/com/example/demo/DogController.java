package com.example.demo;

import java.io.IOException;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.MultipartFilter;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.util.*;
import com.example.demo.Repo.AdminRepo;
import com.example.demo.Repo.DogRepo;
import com.example.demo.Repo.UserRepo;
import com.example.demo.Repo.adoptedRepo;
import com.example.demo.Repo.feedbackRepo;
import com.example.demo.model.Admin;
import com.example.demo.model.Dog;
import com.example.demo.model.feedback;
import com.example.demo.model.tempdog;
import com.example.demo.model.adoptedDog;
import com.example.demo.model.user;

@Controller
public class DogController {

	@Autowired
	DogRepo dogrepo;
	@Autowired
	AdminRepo adminRepo;
	@Autowired
	UserRepo userRepo;
	@Autowired
	feedbackRepo feedbackRepo;
	@Autowired
	adoptedRepo adoptedRepo;

//	Admin Pannel
	@RequestMapping("adminlogin")
	public ModelAndView login() {
		ModelAndView mv = new ModelAndView("Login.jsp");
		return mv;
	}

	@RequestMapping("Admindashboard")
	public ModelAndView adminDashboard(@RequestParam("email") String email, @RequestParam("password") String pass) {
		ModelAndView mv = new ModelAndView();
		Admin verify = adminRepo.findByEmail(email);
		if (verify == null) {
			mv.setViewName("error.jsp");
		} else {
			if (verify.getEmail().equals(email) && verify.getPassword().equals(pass)) {
				mv.addObject("welcome", "welcome");
				mv.addObject("obj", "one");
				mv.setViewName("AdminDashboard.jsp");

			} else {
				mv.setViewName("error.jsp");
			}

		}
		return mv;
	}

	@RequestMapping("ManageAdmin")
	public ModelAndView adminVerify1(Admin admin) {
		ModelAndView mv = new ModelAndView("AdminDetails.jsp");
		mv.addObject("admin", adminRepo.findAll());
		return mv;
	}

	@RequestMapping("updateForm")
	public ModelAndView upadteForm(Admin admin) {
		ModelAndView mv = new ModelAndView("UpdateAdmin.jsp");
		adminRepo.findById(admin.getId());
		mv.addObject("admin", admin);
		return mv;
	}

	@RequestMapping("UpdateAdminData")
	public ModelAndView afterUpdate(Admin admin) {
		adminRepo.save(admin);
		ModelAndView mv = new ModelAndView("AdminDetails.jsp");
		mv.addObject("admin", adminRepo.findAll());
		return mv;
	}

	@RequestMapping("addAdminData")
	public ModelAndView AddadminData(Admin admin) {
		ModelAndView mv = new ModelAndView("AddAdminData.jsp");
		return mv;
	}

	@RequestMapping("deleteForm")
	public ModelAndView deleteForm(Admin admin) {
		ModelAndView mv = new ModelAndView("AdminDetails.jsp");
		adminRepo.findById(admin.getId());
		adminRepo.deleteById(admin.getId());
		mv.addObject("admin", adminRepo.findAll());
		return mv;
	}

	@RequestMapping("Managefeedbacks")
	public ModelAndView viewfeedbacks(feedback feed) {
		ModelAndView mv = new ModelAndView("feedbacks/FeedDetails.jsp");
		mv.addObject("admin", feedbackRepo.findAll());
		return mv;
	}

	@RequestMapping("deleteFeedBacks")
	public ModelAndView deleteFeedbacks(feedback feed) {
		ModelAndView mv = new ModelAndView("feedbacks/FeedDetails.jsp");
		feedbackRepo.findById(feed.getId());
		feedbackRepo.deleteById(feed.getId());
		mv.addObject("admin", feedbackRepo.findAll());
		return mv;
	}

	@RequestMapping("deleteUserdata")
	public ModelAndView deleteUserData(user user) {
		ModelAndView mv = new ModelAndView("feedbacks/ViewUser.jsp");
		userRepo.findById(user.getUserid());
		userRepo.deleteById(user.getUserid());
		mv.addObject("admin", userRepo.findAll());
		return mv;
	}

	@RequestMapping("ViewUser")
	public ModelAndView ViewAllUser(user user) {
		ModelAndView mv = new ModelAndView("feedbacks/ViewUser.jsp");
		mv.addObject("admin", userRepo.findAll());
		return mv;
	}

	
	
	@RequestMapping("AdoptedDog")
	public ModelAndView ViewAllAdoptedDog(adoptedDog daaa) {
		System.out.println(daaa);
		ModelAndView mv = new ModelAndView("feedbacks/ViewAdoptedDogs.jsp");
		mv.addObject("admin", adoptedRepo.findAll());
		return mv;
	}
// End of Admin Pannel

	/* Manage Dog */

	@RequestMapping("ManageDog")
	public ModelAndView CrudDog() {
		ModelAndView mv = new ModelAndView("DogDetails.jsp");
		mv.addObject("dog", dogrepo.findAll());
		return mv;
	}

	@RequestMapping("detailDog")
	public ModelAndView CrudDog1temp(@RequestParam("dogfile") MultipartFile file, @RequestParam("dogname") String name,
			@RequestParam("dogstatus") String status, @RequestParam("dogbreed") String breed,
			@RequestParam("doggender") String gender, @RequestParam("dogdob") String dob) {
		ModelAndView mv = new ModelAndView("DogDetails.jsp");
		Dog dog = new Dog();
		dog.setDogname(name);
		dog.setDogbreed(breed);
		dog.setDoggender(gender);
		dog.setDogdob(dob);
		dog.setDogstatus(status);

		System.out.println(name);
		System.out.println(file);

		String filename = StringUtils.cleanPath(file.getOriginalFilename());
		if (filename.contains("..")) {
			System.out.println("Enter valid file name");
		}
		// dog.setId();
		System.out.print(filename);

		try {
			dog.setDogfile(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		dogrepo.save(dog);
		mv.addObject("dog", dogrepo.findAll());

		return mv;
	}

	@RequestMapping("updateDog")
	public ModelAndView upadteForm(@RequestParam("dogstatus") String status, @RequestParam("dogfile") String file,
			@RequestParam("dogid") Integer id, @RequestParam("dogname") String name,
			@RequestParam("dogbreed") String breed, @RequestParam("doggender") String gender,
			@RequestParam("dogdob") String dob) throws IOException {
		ModelAndView mv = new ModelAndView("AddDog.jsp");
		Dog dog = new Dog();
		dogrepo.findById(id);
		dog.setDogid(id);
		dog.setDogname(name);
		dog.setDogbreed(breed);
		dog.setDoggender(gender);
		dog.setDogdob(dob);
		dog.setDogstatus(status);

		// String filename = StringUtils.cleanPath(file.getOriginalFilename());

		System.out.print(file);

		dog.setDogfile(file);

		mv.addObject("dog", dog);
		return mv;
	}

	/*
	 * @RequestMapping("UpdateDogData") public ModelAndView
	 * afterUpdateDog(@RequestParam("dogfile") String
	 * file, @RequestParam("dogstatus") String status,@RequestParam("dogid") Integer
	 * id,@RequestParam("dogname") String name,@RequestParam("dogbreed") String
	 * breed,@RequestParam("doggender") String gender,@RequestParam("dogdob") String
	 * dob){
	 * 
	 * ModelAndView mv = new ModelAndView("DogDetails.jsp"); Dog dog=new Dog();
	 * dog.setDogid(id); dog.setDogname(name); dog.setDogbreed(breed);
	 * dog.setDoggender(gender); dog.setDogdob(dob); dog.setDogstatus(status);
	 * 
	 * 
	 * System.out.print("Deep \n"+file); dog.setDogfile(file);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * String filename = StringUtils.cleanPath(file.getOriginalFilename());
	 * if(filename.contains("..")) { System.out.println("Enter valid file name"); }
	 * //dog.setId(); System.out.print(filename);
	 * 
	 * 
	 * try { dog.setFile(Base64.getEncoder().encodeToString(file.getBytes())); }
	 * catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * dogrepo.save(dog);
	 * 
	 * mv.addObject("dog",dogrepo.findAll()); return mv; }
	 */

	@RequestMapping("UpdateDogData")
	public ModelAndView afterUpdateDog(@RequestParam("dogfile") String file, @RequestParam("dogstatus") String status,@RequestParam("dogid") Integer id,@RequestParam("dogname") String name,@RequestParam("dogbreed") String breed,@RequestParam("doggender") String gender,@RequestParam("dogdob") String dob){
	
		 System.out.print("Deep \n"+name);
		 System.out.print("Deep \n"+id);
		ModelAndView mv = new ModelAndView("DogDetails.jsp");
		Dog dog=new Dog();
		dog.setDogid(id);
		dog.setDogname(name);
		dog.setDogbreed(breed);
		dog.setDoggender(gender);
		dog.setDogdob(dob);
		dog.setDogstatus(status);
		
		
		 //System.out.print("Deep \n"+file);
		dog.setDogfile(file);
		
		
		 	
		 
		  
		
		dogrepo.save(dog);
		
		mv.addObject("dog",dogrepo.findAll());
		return mv;
	}
	
	
	@RequestMapping("deleteDog")
	public ModelAndView deleteForm(Dog dog) {
		ModelAndView mv = new ModelAndView("DogDetails.jsp");
		dogrepo.findById(dog.getDogid());
		dogrepo.deleteById(dog.getDogid());
		mv.addObject("dog", dogrepo.findAll());
		return mv;
	}
	
	
	
	

	/* Manage Dog */

	/* User Side */

	@RequestMapping("home")
	public ModelAndView HomePage() {
		ModelAndView mv = new ModelAndView("Home.jsp");
		return mv;
	}

	@RequestMapping("userregister")
	public ModelAndView register(user user) {
		ModelAndView mv = new ModelAndView("Home.jsp");
		user verify = userRepo.findByUseremail(user.getUseremail());
		// System.out.println("Verify:"+verify.getEmail());
		System.out.println("User" + user.getUseremail());
		if (verify == null) {
			mv.addObject("user", "one");
			userRepo.save(user);
		} else {
			if (user.getUseremail().equals(verify.getUseremail())) {
				mv.addObject("email", "one");
			}
		}
		return mv;
	}

	@RequestMapping("userdashboard")
	public ModelAndView userDashboard(@RequestParam("useremail") String useremail, @RequestParam("userpassword") String pass) {
		ModelAndView mv = new ModelAndView();
		user verify = userRepo.findByUseremail(useremail);
		System.out.println(verify);
		if (verify == null) {
			mv.setViewName("error1.jsp");
		} else {
			if (verify.getUseremail().equals(useremail) && verify.getUserpassword().equals(pass)) {

				mv.addObject("obj", "one");
				mv.addObject("getdata", verify);
				mv.addObject("dog", dogrepo.findAll());
				mv.setViewName("user/dashboard.jsp");

			} else {
				mv.setViewName("error1.jsp");
			}

		}
		return mv;
	}

	/* End of user side */

	/* User Feedbacks */

	@RequestMapping("feedbackData")
	public ModelAndView userfeedbacks(feedback feed) {
		System.out.print(feed.getEmail());
		System.out.print(feed.getMessage());
		ModelAndView mv = new ModelAndView("Home.jsp");
		mv.addObject("rook", "one");
		feedbackRepo.save(feed);
		return mv;
	}

	@RequestMapping("feedbackData2")
	public ModelAndView userfeedbacks89(feedback feed) {
		System.out.print(feed.getEmail());
		System.out.print(feed.getMessage());
		ModelAndView mv = new ModelAndView("user/dashboard.jsp");
		mv.addObject("rook", "one");
		feedbackRepo.save(feed);
		return mv;
	}

	@RequestMapping("viewDog")
	public ModelAndView viewtDog(Dog dog,user user) throws IOException {
		
		// System.out.println("Dog"+dog);
		ModelAndView mv = new ModelAndView("user/viewDog.jsp");
		mv.addObject("obj", "one");
		mv.addObject("getdata", user);
		mv.addObject("dog", dog);
		return mv;
	}

	@RequestMapping("payment")
	public ModelAndView Payment() {

		ModelAndView mv = new ModelAndView("user/payment.jsp");
		return mv;
	}

	@RequestMapping("userDashboard")
	public ModelAndView goBack(user user) {
		System.out.println("User" + user);
		ModelAndView mv = new ModelAndView("user/userDashboard.jsp");
		mv.addObject("getdata", user);
		mv.addObject("dog", dogrepo.findAll());
		return mv;
	}

	@RequestMapping("userDashboard3333")
	public ModelAndView goBack1() {
		ModelAndView mv = new ModelAndView("user/dashboard.jsp");
		mv.addObject("dog", dogrepo.findAll());
		return mv;
	}
	
	
	@RequestMapping("backToDashboard")
	public ModelAndView goBack2() {
		ModelAndView mv = new ModelAndView("user/dashboard.jsp");
		mv.addObject("dog", dogrepo.findAll());
		return mv;
	}
	/* End of User Feedbacks */

	@RequestMapping("EditUSerProfile")
	public ModelAndView upadteUserProfile(user user) {
		ModelAndView mv = new ModelAndView("user/updateuser.jsp");
		userRepo.findById(user.getUserid());
		mv.addObject("admin", user);
		return mv;
	}

	@RequestMapping("UpdateUserData")
	public ModelAndView afterUpdate1(user user) {
		userRepo.save(user);

		ModelAndView mv = new ModelAndView("user/dashboard.jsp");
		mv.addObject("getdata", user);
		return mv;
	}

	@RequestMapping("afterpayment")
	public ModelAndView afterPayment(user user) {

		ModelAndView mv = new ModelAndView("user/dashboard.jsp");
		mv.addObject("getdata", user);
		return mv;
	}

	
	/*
	 * @RequestMapping("adoptedDog") public ModelAndView
	 * adoptedDog(@RequestParam("dogname") String dogname, @RequestParam("username")
	 * String username,@RequestParam("useremail") String useremail) { ModelAndView
	 * mv = new ModelAndView("user/viewDog1.jsp"); adoptedDog aD=new adoptedDog();
	 * aD.setAdopteddogname(dogname); aD.setAdoptedemail(useremail);
	 * aD.setAdoptedname(username); adoptedRepo.save(aD); mv.addObject("adddata",
	 * aD); return mv; }
	 */
	
	@RequestMapping("adoptedDog")
	public ModelAndView adoptedDog(user user,Dog dog) {
		ModelAndView mv = new ModelAndView("user/viewDog1.jsp");
		adoptedDog aD=new adoptedDog();
		mv.addObject("user", user);
		mv.addObject("dog", dog);
		mv.addObject("obj", "one");	
		aD.setAdopteddogname(dog.getDogname());
		aD.setAdoptedname(user.getUsername());
		aD.setAdoptedemail(user.getUseremail());
		dogrepo.save(dog);
		adoptedRepo.save(aD);
		return mv;
	}
	
}
