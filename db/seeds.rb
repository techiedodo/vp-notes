require 'faker'

5.times do
  tutor = Tutor.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
   )
  tutor.skip_confirmation!
  tutor.save!
end
tutors = Tutor.all

30.times do
  Student.create!(
    tutor: tutors.sample,
    name: Faker::Name.name
  )
end
students = Student.all

# 50.times do
#   Session.create!(
#     student: students.sample,
#     session_name: Faker::Internet.domain_word
#   )
# end

tutor = Tutor.first
tutor.skip_reconfirmation!
tutor.update_attributes!(
  name: 'Luis Gaytan',
  email: 'gaytan_luis@msn.com',
  password: 'sangre17'
)

second = Tutor.second
second.skip_reconfirmation!
second.update_attributes!(
  name: 'Antonio Gaytan',
  email: 'gaytan_luis@hotmail.com',
  password: 'sangre17'
)
puts "Seed Finished"
puts "#{Tutor.count} tutors created"
puts "#{Student.count} students created"
