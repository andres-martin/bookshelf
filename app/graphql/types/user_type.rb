# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description 'A User'

    field :is, ID, null: true
    field :email, String, null: true
    field :is_superadmin, Boolean, null: true, camelize: true

    def self.visible?(context)
      !!context[:current_user]
    end
  end
end
