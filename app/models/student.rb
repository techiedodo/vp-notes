# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string
#  tutor_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Student < ApplicationRecord
  has_many :tutoring_sessions
  belongs_to :tutor
end
