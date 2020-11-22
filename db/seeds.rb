# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#______ Seed Parks __________________________

# responseParks = RestClient.get 'https://developer.nps.gov/api/v1/parks?api_key=EMPasi52WTBfeEF3PtLSHdhbK6uBhmtXl01Q0TcL&limit=500'
# jsonParks = JSON.parse responseParks


# if !jsonParks.nil?
#   jsonParks["data"].map do |park|
#     Park.create(
#       parkid: park["id"],
#       url: park["url"],
#       fullname: park["fullName"],
#       parkcode: park["parkCode"],
#       description: park["description"],
#       latitude: park["latitude"],
#       longitude: park["longitude"],
#       state: park["states"],
#       phonenumber: park["contacts"]["phoneNumbers"] && park["contacts"]["phoneNumbers"][0] && park["contacts"]["phoneNumbers"][0]["phoneNumber"],
#       postalcode: park["addresses"] && park["addresses"][0] && park["addresses"][0]["postalCode"],
#       city: park["addresses"] && park["addresses"][0] && park["addresses"][0]["city"],
#       statecode: park["addresses"] && park["addresses"][0] && park["addresses"][0]["stateCode"],
#       addline1: park["addresses"] && park["addresses"][0] && park["addresses"][0]["line1"],
#       addline2: park["addresses"] && park["addresses"][0] && park["addresses"][0]["line2"],
#       imageurl: park["images"] && park["images"][0] && park["images"][0]["url"],
#       weatherinfo: park["weatherInfo"],
#       designation: park["designation"]
#     )
#   end
# else
#   puts "error seeding parks"
# end

#______ Seed Activities ____________________

#   responseActivities = RestClient.get 'https://developer.nps.gov/api/v1/activities?api_key=EMPasi52WTBfeEF3PtLSHdhbK6uBhmtXl01Q0TcL'
#   jsonActivities = JSON.parse responseActivities

# if !jsonActivities.nil?
#   jsonActivities["data"].map do |activity|
#     Activity.create(
#       activityid: activity["id"],
#       name: activity["name"]
#     )
#   end
# else  
#   puts "error seeding activities"
# end

#______ Seed ParkActivities _________________

# responseParks = RestClient.get 'https://developer.nps.gov/api/v1/parks?api_key=EMPasi52WTBfeEF3PtLSHdhbK6uBhmtXl01Q0TcL&limit=500'
# jsonParks = JSON.parse responseParks

# jsonParks["data"].each do |park|
#   park["activities"].each do |activity|
#     Parkactivity.create(
#       park_id: Park.find_by(fullname: park["fullName"]).id,
#       activity_id: Activity.find_by(name: activity["name"]) != nil ? Activity.find_by(name: activity["name"]).id : 40
#     )
#   end
# end


#______ Success message _____________________

# puts "data loaded success"