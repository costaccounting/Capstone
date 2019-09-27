package ca.sheridancollege.beans;

import java.io.Serializable;
import java.util.*;
import javax.persistence.*;
import lombok.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.UniqueElements;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
//@NamedQuery(name = "Registered", query = "select * from RegisterUser")
public class RegisterUser {

	@Id
	//@UniqueElements(message="Account Associated with this Email Already Exist")
	//@Pattern(message="Invalid EMAIl", regexp=".*@*\\.com")
	private String email;
	
	//@NotNull(message="First Name Cannot be NULL")
	//@NotBlank(message="First Name Text Field Cannot be EMPTY")
	private String firstName;
		
	//@NotNull(message=":Last Name Cannot be NULL")
	//@NotBlank(message="Last Name Text Field Cannot be EMPTY")
	private String lastName;
	
	//@NotNull(message=":Password Cannot be NULL")
	//@NotBlank(message="Password Text Field Cannot be EMPTY")
	//@Pattern(message="Password should be Alpha-Numeric", regexp = "^[A-Z][a-z][a-z][a-z][0-9][0-9]$")
	private String password;
	
	private String role= "Client";
	
	//private String[] rolesList = {"Client", "Lawyer"};

}
