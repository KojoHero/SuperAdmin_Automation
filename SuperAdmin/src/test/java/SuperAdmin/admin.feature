Feature: Super admin login
         

Scenario Outline: Verify if Super admin can log in with valid and invalid credentials
    Given Admin visits the community platform and logs in 
    When  Admin enters his "<email>" and "<password>"      
    And   Admin clicks on the login button     
    Then  Admin should be informed with a success or failure "<message>" depending on the credentials used
    
Examples:            
            |   email                        |    password   | notice|  
		    |   adminamalitech.com           |   12345678!Aa | Please check your credentials and try again.|        
		    |   testing.amalitech@gmail.com  |   12354678!Aa | Please check your credentials and try again.|	    
		    |   admin.amalitech.com          |   12345678!Aa | Please check your credentials and try again.| 		 	  	
		    |   admin@amalitech.com          |    12345678   | Please check your credentials and try again.|				
		    |   admin@amalitech.com          |               | An error occured.|
		    |                                |   12345678!Aa | An error occured.|
		    |   admin@amalitech.com          |    aaaaaaaaaA | Please check your credentials and try again.|
		    |   admin@amalitech.com          |    1234567890 | Please check your credentials and try again.|	