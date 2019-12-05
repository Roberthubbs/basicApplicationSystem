# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Job.destroy_all
JobApplication.destroy_all

guestUser = User.create!(email: "DemoUser", password: "Password")
guestUser2 = User.create!(email: "lurePro22", password: "Password")
guestUser3 = User.create!(email: "gone-fishing34", password: "Password")
guestUser4 = User.create!(email: "born-on-the-sea", password: "Password")
guestUser5 = User.create!(email: "professional36", password: "Password")
guestUser6 = User.create!(email: "caliangler", password: "Password")
guestUser7 = User.create!(email: "fishin_in_ponds", password: "Password")
guestUser8 = User.create!(email: "howyoulikethembass", password: "Password")


job1 = Job.create!(title: "Engineer", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser.id)
job2 = Job.create!(title: "Software Engineer", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser2.id)
job3 = Job.create!(title: "Sales Associate", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser3.id)
job4 = Job.create!(title: "Technician", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser4.id)
job5 = Job.create!(title: "Repairmen", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser5.id)
job6 = Job.create!(title: "Angler", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser6.id)
job7 = Job.create!(title: "Personal Trainer", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser7.id)
job8 = Job.create!(title: "Tester", description: "Lorum Ipsum I cant remember the rest", poster_id: guestUser8.id)