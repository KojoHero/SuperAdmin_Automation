@COMMUNITY-370
@REQ_COMMUNITY-7
Feature: Admin Portal

	#Tests The system should have one super admin login credentials so that he can add more admins to manage the portal.
	#
	#*Acceptance Criteria:*
	#
	## The user enters a specific username & password under the same log-in page.
	## The system gives maximum access to this user: 
	### view all the users on the portal; (please follow View All Members user story for this without location specificity just for this feature; Name search availability): One operation upon clicking on a specific profile: deactivate/activate
	### view details of all businesses from the backend. (View All Me Members user story): deactivate/activate
	## the user has access to the admin portal for all new business account requests (when View All Organization page is loaded, new registered organizations are to be shown on top of the page with (verify (approve/disapprove button)))
	@TEST_COMMUNITY-409 @REQ_COMMUNITY-31 @TESTSET_COMMUNITY-410
	Scenario Outline: Verify if super admin can login into account successfully with invalid credentials
		Given Admin visits the community platform and logs in 
		    When  Admin enters his "<email>" and "<password>"      
		    And   Admin clicks on the login button     
		    Then  Admin should be informed with a success or failure "<message>" depending on the credentials used
		    
		Examples:            
		            |   email                        |    password   | notice|  
				    |   adminamalitech.com           |   12345678!Aa | Please check your credentials and try again.|        
				    |   admin.amalitech.com          |   12345678!Aa | Please check your credentials and try again.| 		 	  	
				    |   admin@amalitech.com          |    12345678   | Please check your credentials and try again.|				
				    |   admin@amalitech.com          |               | An error occured.|
				    |                                |   12345678!Aa | An error occured.|
				    |   admin@amalitech.com          |    aaaaaaaaaA | Please check your credentials and try again.|
				    |   admin@amalitech.com          |    1234567890 | Please check your credentials and try again.|
