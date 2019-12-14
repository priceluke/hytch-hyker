require 'active_record/fixtures'
User.destroy_all;

User.create!([{
                  id: 1,
                  email: "elliot@allsafe.com",
                  password: "helloworld",
                  UserID: "1",
                  name: "Elliot Alderson",
                  dob: "2000-11-27 00:00:00",
                  contactNumber: "02392344295",
                  vehicleCapacity: 3,
                  postcode: "PO8 9ED",
                  numberPlate: "SM64 KKC",
                  is_admin: true
              }, {
                  id: 2,
                  email: "angela@allsafe.com",
                  password: "helloworld",
                  UserID: 2,
                  name: "Angela Alderson",
                  dob: "2001-11-27 00:00:00",
                  contactNumber: "01234567890",
                  vehicleCapacity: 5,
                  postcode: "GU1 2ES",
                  numberPlate: "LD64 ZSV",
                  is_admin: false
              }, {
                  id: 3,
                  email: "wellick@allsafe.com",
                  password: "helloworld",
                  UserID: 3,
                  name: "Tyrell Wellick",
                  dob: "1999-11-27 00:00:00",
                  contactNumber: "07393483992",
                  vehicleCapacity: 10,
                  postcode: "GU2 8AG",
                  numberPlate: "CV10 UPZ",
                  is_admin: false
              }, {
                  id: 4,
                  email: "dominique@allsafe.com",
                  password: "helloworld",
                  UserID: 4,
                  name: "Dominique DiPierro",
                  dob: "1998-11-27 00:00:00",
                  contactNumber: "01231231230",
                  vehicleCapacity: 10,
                  postcode: "GU2 7JG",
                  numberPlate: "KY72 ZFD",
                  is_admin: false
              },
              {
                  id: 5,
                  email: "otherwise@allsafe.com",
                  password: "helloworld",
                  UserID: 5,
                  name: "White Rose",
                  dob: "1988-11-27 00:00:00",
                  contactNumber: "07264348991",
                  vehicleCapacity: 7,
                  postcode: "NG7 2RB",
                  numberPlate: "LU69 KEP",
                  is_admin: false
              }
             ]);

Trip.destroy_all;

Trip.create!([{
                  driver_id: "elliot@allsafe.com",
                  trip_id: 1,
                  id: 1,
                  when: "2020-10-28 20:47:08",
                  destination: "Spain",
                  source: "France",
                  petrolcost: 100,
                  description: "123456789012345678901234567890"
              }, {
                  driver_id: "elliot@allsafe.com",
                  trip_id: 2,
                  id: 2,
                  when: "2020-10-28 20:47:08",
                  destination: "France",
                  source: "Spain",
                  petrolcost: 100,
                  description: "123456789012345678901234567890"
              },
              {
                  driver_id: "angela@allsafe.com",
                  trip_id: 3,
                  id: 3,
                  when: "2020-12-06 17:37:44",
                  source: "Hertfordshire",
                  destination: "Durham",
                  petrolcost: 38,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
              },
              {
                  driver_id: "dominique@allsafe.com",
                  trip_id: 4,
                  id: 4,
                  when: "2020-12-19 02:15:40",
                  source: "Cumberland",
                  destination: "Wiltshire",
                  petrolcost: 31,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing"
              },
              {
                  driver_id: "otherwise@allsafe.com",
                  trip_id: 5,
                  id: 5,
                  when: "2020-06-24 08:42:31",
                  source: "Lanarkshire",
                  destination: "Brecknockshire",
                  petrolcost: 78,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor."
              },
              {
                  driver_id: "angela@allsafe.com",
                  trip_id: 6,
                  id: 6,
                  when: "2020-11-29 20:25:29",
                  source: "Kent",
                  destination: "Orkney",
                  petrolcost: 75,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor."
              },
              {
                  driver_id: "angela@allsafe.com",
                  trip_id: 7,
                  id: 7,
                  when: "2021-12-30 13:21:05",
                  source: "Anglesey",
                  destination: "Buckinghamshire",
                  petrolcost: 46,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor."
              },
              {
                  driver_id: "elliot@allsafe.com",
                  trip_id: 8,
                  id: 8,
                  when: "2021-01-09 13:48:27",
                  source: "Rutland",
                  destination: "Orkney",
                  petrolcost: 56,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur"
              },
              {
                  driver_id: "dominique@allsafe.com",
                  trip_id: 9,
                  id: 9,
                  when: "2020-06-01 06:01:19",
                  source: "Nairnshire",
                  destination: "Berkshire",
                  petrolcost: 97,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit."
              },
              {
                  driver_id: "wellick@allsafe.com",
                  trip_id: 10,
                  id: 10,
                  when: "2020-11-05 12:51:35",
                  source: "Suffolk",
                  destination: "Morayshire",
                  petrolcost: 99,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor."
              },
              {
                  driver_id: "elliot@allsafe.com",
                  trip_id: 11,
                  id: 11,
                  when: "2021-01-15 22:03:02",
                  source: "Oxfordshire",
                  destination: "Buckinghamshire",
                  petrolcost: 21,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus."
              },
              {
                  driver_id: "otherwise@allsafe.com",
                  trip_id: 12,
                  id: 12,
                  when: "2021-07-16 03:37:20",
                  source: "Warwickshire",
                  destination: "Stirlingshire",
                  petrolcost: 98,
                  description: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur"
              }]);

TripUser.destroy_all;

TripUser.create!([
                     {
                         TripID: 2,
                         PassengerID: "wellick@allsafe.com",
                         message: "mauris.",
                         id: 1
                     },
                     {
                         TripID: 10,
                         PassengerID: "elliot@allsafe.com",
                         message: "sit amet,",
                         id: 2
                     },
                     {
                         TripID: 3,
                         PassengerID: "wellick@allsafe.com",
                         message: "Nulla",
                         id: 3
                     },
                     {
                         TripID: 12,
                         PassengerID: "wellick@allsafe.com",
                         message: "mauris. Integer sem",
                         id: 4
                     },
                     {
                         TripID: 11,
                         PassengerID: "otherwise@allsafe.com",
                         message: "risus.",
                         id: 5
                     },
                     {
                         TripID: 7,
                         PassengerID: "otherwise@allsafe.com",
                         message: "aliquet",
                         id: 6
                     },
                     {
                         TripID: 9,
                         PassengerID: "elliot@allsafe.com",
                         message: "per",
                         id: 7
                     },
                     {
                         TripID: 5,
                         PassengerID: "wellick@allsafe.com",
                         message: "ut eros",
                         id: 8
                     },
                     {
                         TripID: 11,
                         PassengerID: "wellick@allsafe.com",
                         message: "faucibus orci luctus et ultrices",
                         id: 9
                     },
                     {
                         TripID: 1,
                         PassengerID: "dominique@allsafe.com",
                         message: "lacus. Quisque imperdiet, erat nonummy",
                         id: 10
                     },
                     {
                         TripID: 4,
                         PassengerID: "angela@allsafe.com",
                         message: "tempus mauris",
                         id: 11
                     },
                     {
                         TripID: 10,
                         PassengerID: "dominique@allsafe.com",
                         message: "mauris, aliquam eu, accumsan",
                         id: 12
                     },
                     {
                         TripID: 2,
                         PassengerID: "otherwise@allsafe.com",
                         message: "purus.",
                         id: 13
                     },
                     {
                         TripID: 11,
                         PassengerID: "angela@allsafe.com",
                         message: "Praesent",
                         id: 14
                     },
                     {
                         TripID: 7,
                         PassengerID: "wellick@allsafe.com",
                         message: "auctor quis,",
                         id: 15
                     },
                      {
                         TripID: 5,
                         PassengerID: "angela@allsafe.com",
                         message: "neque. Nullam nisl. Maecenas",
                         id: 16
                     },
                     {
                         TripID: 6,
                         PassengerID: "wellick@allsafe.com",
                         message: "adipiscing elit.",
                         id: 17
                     }
                 ]);