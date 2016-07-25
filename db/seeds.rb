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
grades = Array(5..12)

30.times do
  Student.create!(
    tutor: tutors.sample,
    name: Faker::Name.name,
    grade: grades.sample,
    biography: Faker::Lorem.paragraph(3)
  )
end
students = Student.all

150.times do
  TutoringSession.create!(
    student: students.sample,
    session_date: Faker::Internet.domain_word
  )
end
sessions = TutoringSession.all

550.times do
  Note.create!(
    tutoring_session: sessions.sample,
    summary: Faker::Lorem.paragraph(3),
    achievement: Faker::Lorem.paragraph(3),
    what_next: Faker::Lorem.paragraph(3),
    recommendation: Faker::Lorem.paragraph(3),
    rate: Faker::Number.number(2),
    date_session: Faker::Time.between(DateTime.now - 1, DateTime.now),
    tm_start: Time.now-(60*60),
    tm_end: Time.now+(60*60)
  )
end

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
puts "#{TutoringSession.count} sessions created"
puts "#{Note.count} notes created"
