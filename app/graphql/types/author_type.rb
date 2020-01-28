class Types::AuthorType < Types::BaseObject
  description "Än author" 

  field :id, ID, null: false
  field :first_name, String, null: true # camelize: false --> it can be deactivated to have consistent snake case with ruby
  field :last_name, String, null: true
  field :yob, Int, null: false
  field :is_alive, Boolean, null: true
  field :full_name, String, null: true, camelize: false

#   def full_name
#     ([object.first_name, object.last_name].compact).join " "
#   end
  field :coordinates, Types::CoordinatesType, null: false
  field :publication_years, [Int], null: false
end