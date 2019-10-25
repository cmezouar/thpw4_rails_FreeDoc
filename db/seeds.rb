# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all
JoinTableSpecialtyDoctor.destroy_all



20.times do |i|
    c = City.create(name: "Paris", zip_code:"75000")
    d = Doctor.create(first_name: "Doctor#{i}", last_name: "DocFam#{i}", zip_code: "7500#{i}", city: c)
    s = Specialty.create(name: "Generaliste")
    jsd = JoinTableSpecialtyDoctor.create(doctor: d,specialty: s)
    pa = Patient.create(first_name: "Patient#{i}", last_name: "PatientFam#{i}", city: c)
    a = Appointment.create(date: DateTime.now, doctor: d, patient: pa, city: c)
end
puts "20 entries created"

