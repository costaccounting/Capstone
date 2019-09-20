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
	
	@RequestMapping("/logout")
	public String goLogOut(Model model) {
			
		model.addAttribute("logOutMess", "Thanks for using our services. See you again soon.");
		model.addAttribute("register", new RegisterUser());
		
		
		return "index";
	}
	
	
	@RequestMapping("/LegalDoc")
	public String goLegalDoc(Model model, @RequestParam String userNameStore) {
		model.addAttribute("userNameStore", userNameStore );
		
		return "LegalDocument";
	}
	
	
	@RequestMapping("/LegalForm")
	public String goLegalForm(Model model, @RequestParam String userNameStore) {
		
		return "legalForm";
	}

	
	@RequestMapping("/legalDocumentForm")
	public String goLegalDocument(Model model) {
			
			return "Customer/SelectService";
	}
	
// ****  Navigation between Pages 	**END**   ***
	
	
//-----------------********		REGISTER   START	********---------------------------------
	
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

//-----------------********		REGISTER   END	********---------------------------------
	
//-----------------********		LOGIN	START	********---------------------------------
	
	@RequestMapping("/login")
	public String goLogin(Model model, @RequestParam String email, @RequestParam String password) {
		
		if(dao.getEmail(email).isEmpty())
		{
			model.addAttribute("loginMess", "Your Account DOES NOT Exists. Please Register First");
			model.addAttribute("registerUser", new RegisterUser());
			
			return "index";
		}
		else {
			if((dao.getRole(email, password).get(0)).equals("Admin"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("Useremail", email );
				model.addAttribute("allData", dao.getDataForAdmin(email));
				
				return "Admin/Admin";
			}
			else if((dao.getRole(email, password).get(0)).equals("Client"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("email", email );
				
				return "Customer/SelectService";
			}
			else if((dao.getRole(email, password).get(0)).equals("Lawyer"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("Useremail", email );
				model.addAttribute("allDataForLawyer", dao.getDataForLawyer(email));
				
				return "Lawyer/Lawyer";
			}
			else {
				model.addAttribute("loginMess", "Bad Credentials. Please Re enter Your Password");
				model.addAttribute("registerUser", new RegisterUser());
				
				return "index";
			}
			
		}
		
	}
//-----------------********		LOGIN	END		********---------------------------------
	
	@RequestMapping("/dashboard/{email}")
	public String goDashbaord(Model model, @PathVariable String email ,@RequestParam String Useremail, @RequestParam String password) {
		
		
			if((dao.getRole(email, password).get(0)).equals("Admin"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("Useremail", email );
				model.addAttribute("allData", dao.getDataForAdmin(email));
				
				return "Admin/Admin";
			}
			else if((dao.getRole(email, password).get(0)).equals("Lawyer"))
			{
				String firstNameStore = dao.getFirstName(email).get(0);
				
				model.addAttribute("firstName", firstNameStore);
				model.addAttribute("Useremail", email );
				model.addAttribute("allDataForLawyer", dao.getDataForLawyer(email));
				
				return "Lawyer/Lawyer";
			}
			else {
				model.addAttribute("loginMess", "Bad Credentials. Please Re enter Your Password");
				model.addAttribute("registerUser", new RegisterUser());
				
				return "index";
			}
			
		}

	
	
	
//-----------------********		NAVIGATION TO DETAILS & EDIT PAGE		********---------------------------------
	@RequestMapping("/details/{email}/{Useremail}/{UserPassword}")
	public String goDetails(Model model, @PathVariable String email, @PathVariable String Useremail, @PathVariable String UserPassword) {
	
		
		model.addAttribute("email", email);
		model.addAttribute("firstName", dao.getFirstName(Useremail));
		model.addAttribute("Useremail", Useremail);
		model.addAttribute("UserPassword", UserPassword);
		
		return "details";
	}
	
	
	
	
	
	
//-----------------****************---------------------------------

	@RequestMapping(value = "/deleteAdmin/{email}/{Useremail}/{UserPassword}")	
	public String deleteAdminSide(Model model, @PathVariable String email, @PathVariable String Useremail, @PathVariable String UserPassword) {
		
		dao.deleteUser(email);
		model.addAttribute("allData", dao.getDataForAdmin(email));
	
		
		return "Admin/Admin";
	}
	
//-----------------****************---------------------------------
	//-----------------****************---------------------------------

		@RequestMapping(value = "/deleteLawyer/{email}/{Useremail}/{UserPassword}")	
		public String deleteLawyerSide(Model model, @PathVariable String email, @PathVariable String Useremail, @PathVariable String UserPassword) {
			
			dao.deleteUser(email);
			model.addAttribute("allDataForLawyer", dao.getDataForLawyer(email));
		
			
			return "Lawyer/Lawyer";
		}
		
	//-----------------****************---------------------------------
			
//-----------------****************---------------------------------

//-----------------****************---------------------------------
			
			
}
