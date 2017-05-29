# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "cynthia",
  email: "cynthia@cynthia.com",
  password: "password",
  password_confirmation: "password"
},{
  username: "nadia",
  email: "nadia@nz.co",
  password: "password",
  password_confirmation: "password"
}])

Patient.create!([{
  patient_no: 323324,
  first_name: "kelly",
  last_name: "honda",
  diagnosis: "cancer"
},{
  patient_no: 323324,
  first_name: "daniel",
  last_name: "crekster",
  diagnosis: "kidney stones"
}])

Assessment.create!([{
	medically_stable:"yes",
  rehab_in_short_term:"no",
  discharge_destination:"ipswich hospital",
  requires_level_of_nursing_care:"yes",
  housing_issues:"no",
  under_age_18:"no",
  mental_health_problems:"yes",
  requires_respite_care:"yes",
  requires_long_term_placement:"yes"
}])

Bed.create!([{
  hospital_name:"ipswich Hospital",
  hospital_location: "ipswich",
  beds_available: 6
}])

Poc.create!([{
  home_care: "yes",
  meals_on_wheels: "yes",
  frozen_meals: "no, fresh only",
  day_care: "yes",
  day_hospital: "no",
  district_nurse: "yes",
  physio: "yes",
  residential_home: "yes",
  nursing_home: "no",
  other: "no notes at present",
  notes: "n/a"
}])



puts User.all
puts Patient.all
puts Assessment.all
puts Bed.all
puts Poc.all
