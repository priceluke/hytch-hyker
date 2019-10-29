# HytchHyker
RoR Coursework

3 table model

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

TODO:
>Post forms need to take logged in user and require login
>link trips to users
>view trips you are a part of
>view people who have joined your trip

