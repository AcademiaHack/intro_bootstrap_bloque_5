# == Schema Information
#
# Table name: hobbies
#
#  id         :integer          not null, primary key
#  name       :string
#  kind       :integer
#  person_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_hobbies_on_person_id  (person_id)
#

require 'test_helper'

class HobbieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
