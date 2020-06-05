# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s1 = Student.create(first_name: "Bob", last_name: "Smith", active: true)
s2 = Student.create(first_name: "John", last_name: "Doe")
s3 = Student.create(first_name: "Debbie", last_name: "Downer")
s4 = Student.create(first_name: "Homer", last_name: "Simpson", active: true)