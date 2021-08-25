# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
User.create(email: "#{i}@gmail.com", username: "#{i}", password: "123456", password_confirmation: "123456")
gpa = (4.3*i+4+3*2+2*3+1*4)/(15+i)
Grade.create(AA: i, A: 1, B: 2, C: 3, D: 4, F: 5, user_id: i, GPA: gpa.round(2))
end