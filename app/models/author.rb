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

class Author < ApplicationRecord
  validates :last_name, presence: true

  def full_name
    ([first_name, last_name].compact).join " "
  end

  def coordinates
    [rand(90), rand(90)]
  end
 
  def publication_years
    (1..rand(10)).to_a.map {1900 - rand(100)}
  end

end
