# == Schema Information
#
# Table name: navigations
#
#  id         :integer          not null, primary key
#  title      :string(50)
#  position   :integer
#  permalink  :string(255)
#  admin      :boolean          default(FALSE)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class NavigationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
