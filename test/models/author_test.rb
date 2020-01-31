# frozen_string_literal: true

# == Schema Information
#
# Table name: authors
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  yob        :integer
#  is_alive   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
