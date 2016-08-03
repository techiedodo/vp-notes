# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  tutor_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  grade      :string
#  biography  :text
#

class Student < ApplicationRecord
  has_many :tutoring_sessions, dependent: :destroy
  belongs_to :tutor

  validates :name, length: {minimum: 5}, presence: true
  validates :grade, presence: true
  validates :biography, length: {minimum: 10}, presence: true

  default_scope { order('students.name ASC')}
end
