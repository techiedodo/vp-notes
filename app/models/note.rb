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

class Note < ApplicationRecord
  belongs_to :tutoring_session

  validates :summary, length: {minimum: 5}, presence: true
  validates :achievement, length: {minimum: 3}, presence: true
  validates :what_next, length: {minimum: 3}, presence: true
  validates :recommendation, length: {minimum: 3}, presence: true
  validates :rate, presence: true
  validates :date_session, presence: true
  validates :tm_start, presence: true
  validates :tm_end, presence: true
  default_scope { order('created_at DESC')}
end
