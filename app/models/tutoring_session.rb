# == Schema Information
#
# Table name: tutoring_sessions
#
#  id           :integer          not null, primary key
#  session_date :string
#  student_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TutoringSession < ApplicationRecord
  belongs_to :student
  has_many :notes, dependent: :destroy

  validates :session_date, presence: true
  default_scope { order('created_at DESC')}
end
