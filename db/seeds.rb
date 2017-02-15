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
  first_name: "patient",
  last_name: "0",
  diagnosis: "cancer",
  assesment: "yes see notes"
  }])

puts User.all
puts Patient.all
