# == Schema Information
#
# Table name: people
#
#  id                  :integer          not null, primary key
#  name                :string
#  age                 :integer
#  gender              :string
#  alien               :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
