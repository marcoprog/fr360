# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string(255)
#  max_rate    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Question < ActiveRecord::Base
  has_many :feedbacks
  belongs_to :questionnaire

  validates :max_rate, numericality: {less_than_or_equal_to: 10, greater_than_or_equal_to: 3}, presence: true
  validates :description, presence: true

  scope :sorted, lambda {order(:created_at)}
end
