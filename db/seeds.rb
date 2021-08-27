# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

150.times do |i|
  User.create(email: "#{i}@gmail.com", username: "#{i}", password: "123456", password_confirmation: "123456", lab: "example", year: rand(2018..2021))
  aa = rand(100)
  a = rand(100)
  b = rand(100)
  c = rand(100)
  d = rand(100)
  f = rand(100)
  gpa = (4.3*aa+4*a+3*b+2*c+1*d)/(aa+a+b+c+d+f)
  Grade.create(AA: aa, A: a, B: b, C: c, D: d, F: f, user_id: i, GPA: gpa.round(2))
end
