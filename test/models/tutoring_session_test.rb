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

require 'test_helper'

class TutoringSessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
