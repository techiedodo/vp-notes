# == Schema Information
#
# Table name: notes
#
#  id                  :integer          not null, primary key
#  summary             :text
#  achievement         :text
#  what_next           :text
#  recommendation      :text
#  rate                :integer
#  date_session        :date
#  tm_start            :time
#  tm_end              :time
#  tutoring_session_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
