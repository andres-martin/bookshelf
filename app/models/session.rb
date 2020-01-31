# == Schema Information
#
# Table name: sessions
#
#  id         :bigint           not null, primary key
#  user_id    :integer
#  key        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Session < ApplicationRecord
  belongs_to :user
end
