# Welcome to HytchHyker!

This was created as part of my Web Applications module at University. It was created on the following versions:

 - ruby 2.5.7p206 (2019-10-01 revision 67816) [x86_64-linux]
 - Rails 5.2.3

# How it works
It's pretty simple, the site allows users to add, manage and become a passenger for various trips. It uses bootstrap and is based around the Devise gem.

## Demo
To see the site in action ensure the database environment is set to **development**, there is already some data in there for you to use.
**Use either of these accounts:**

 - Administrator
	 - "elliot@allsafe.com", "helloworld"
	 - This account will allow you to view pivot table data and remove other users.
 - Standard
	 - "angela@allsafe.com", "helloworld"
	 - This account will allow functionality as intended by any member of the public when the app is in production

Make sure you check out **My Account** to get analytics!

## Where to find examples of...

###  Only those routes required exposed:
You can see all routes if you are an administrator for data management purposes but standard users don't need to be able to see pivot table routes so these are blocked.
>localhost:888/trip_users/1
### JQuery
I have included a dark mode to prevent strain on users eyes at night.
### Partials
Partials used throughout.
### Controllers: Testing
The following command tests all aspects of the Rails app, including restricted routes that should only be accessible to an Admin.
>rails test
### Mailer
Contact mailer works as per lab /w customisation.
### Models: Validation
All validation is done at the back end and the errors are passed back and displayed with bootstrap. All relationships have been declared and they function as required. Testing also included model tests. 
### Code Style
I have tried to keep with the community driven code style outlined below:
[https://github.com/rubocop-hq/rails-style-guide](https://github.com/rubocop-hq/rails-style-guide)
### Locales
I have used string locales throughout my application to make it easy to implement other languages in future and keep string reuse to a minimum.
### GitHub
Pushing everytime I made a significant change to the project.
### DRY
I have pulled out repeated functions to helpers to reduce code repetition.

#Schema

Users
	UserID*
	Name
	DoB
	ContactNumber
	Postcode
	NumberPlate
	EmailAddress
	Username
	PasswordHash
	VehicleCapacity
Trips
	TripID*
	DriverID
	Date
	Time
	Destination
	Source
	PetrolCost
	Description	
UserTrip
	TripID*
	PassengerID*
	Message

