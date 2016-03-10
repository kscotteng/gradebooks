# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

t = Teacher.create(name: "Bob", email: "B@B.com", password: "password")
s = Student.create(name: "Clare", email: "C@C.com", password: "password")
m = Parent.create(name: "Siri", email: "S@S.com", password: "password")

g = Grade.create(assignment: "Math", grade: 95)
