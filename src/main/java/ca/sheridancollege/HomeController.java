package ca.sheridancollege;

import java.text.*;
import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

import ca.sheridancollege.beans.*;
import ca.sheridancollege.dao.*;

@Controller
public class HomeController {

	Dao dao = new Dao();
	
	
	// ****  Navigation between Pages  ***
	
	@RequestMapping("/")
	public String goHome(Model model) {
		model.addAttribute("registerUser", new RegisterUser());
		
		return "index";
	}
	
	@RequestMapping("/signIn")
	public String gosignIN(Model model) {
		model.addAttribute("registerUser", new RegisterUser());
		
		return "index";
	}
	
	@RequestMapping("/register")
	public String goRegisterPage(Model model, @ModelAttribute RegisterUser registerUser) {
		model.addAttribute("registerUser", new RegisterUser());
		
		return "signUP";
	}
	
	@RequestMapping("/admin")
	public String goAdminPage(Model model, @ModelAttribute RegisterUser registerUser) {
		model.addAttribute("registerUser", new RegisterUser());
		
		return "Admin/Admin";
	}
	
	
	// ****  Navigation between Pages  ***
	
	
	
	@RequestMapping("/register1")
	public String goRegister(Model model, @ModelAttribute RegisterUser registerUser) {
		
		
			if(dao.addUser(registerUser)==true) {
				model.addAttribute("message", "You have Successfully Created your Account");
				model.addAttribute("successMessage", "Please Login in with your credentials");
				 
				 
				model.addAttribute("registerUser", new RegisterUser());
				// Empty the field in form and sends it to register page
				return "index";	
			}
			else
			{
				model.addAttribute("message", "Your Account was not created. Please try again");
				// Error Message
				model.addAttribute("mess", dao.validateUser(registerUser));
				model.addAttribute("register", registerUser); 
				// Stores the form inputed data and return back to register form
				
				return "index";	
			
			}// End of UserName Check
		
	}// end of method
	
//-----------------****************---------------------------------
	
	@RequestMapping("/login")
	public String goLogin(Model model, @RequestParam String email, @RequestParam String password) {
		
		if(dao.getEmail(email).get(0).equals(email))
		{
			if((dao.getLoginCredentails(email, password).get(0)).equals("Admin"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("email", email );
				model.addAttribute("allData", dao.getAllData());
				
				return "Admin";
			}
			else if((dao.getLoginCredentails(email, password).get(0)).equals("Client"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("email", email );
				
				return "Customer/SelectService";
			}
			else {
				model.addAttribute("loginMess", "Bad Credentials. Please Re enter Your Password");
				model.addAttribute("register", new RegisterUser());
				
				return "Register";
			}
		}
		else {
			model.addAttribute("loginMess", "Your Account DOES NOT Exists");
			model.addAttribute("register", new RegisterUser());
			
			return "Register";
		}
	}
	
//-----------------****************---------------------------------


//-----------------****************---------------------------------
		@RequestMapping("/logout")
		public String goLogOut(Model model) {
				
		//	model.addAttribute("logOutMess", "Thanks for using our services. See you again soon.");
			//model.addAttribute("register", new RegisterUser());
			
			
			return "index";
		}
//-----------------****************---------------------------------

//-----------------****************---------------------------------
			
			@RequestMapping("/LegalDoc")
			public String goLegalDoc(Model model, @RequestParam String userNameStore) {
				model.addAttribute("userNameStore", userNameStore );
				
				return "LegalDocument";
			}
			
//-----------------****************---------------------------------
			
			@RequestMapping("/LegalForm")
			public String goLegalForm(Model model, @RequestParam String userNameStore) {
				
				return "legalForm";
			}
		
//-----------------****************---------------------------------
			
			@RequestMapping("/legalDocumentForm")
			public String goLegalDocument(Model model) {
					
					return "Customer/SelectService";
			}
}
