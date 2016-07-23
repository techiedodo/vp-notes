# == Schema Information
#
# Table name: sessions
#
#  id           :integer          not null, primary key
#  session_name :string
#  student_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Session < ApplicationRecord
  belongs_to :student
end
