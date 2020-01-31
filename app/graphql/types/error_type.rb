# frozen_string_literal: true

class Types::ErrorType < Types::BaseObject
  description 'An Active Record error'

  field :field_name, String, null: false, camelize: false
  field :errors, [String], null: false
end
