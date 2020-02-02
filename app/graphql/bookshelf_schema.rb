# frozen_string_literal: true

class BookshelfSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # Opt in to the new runtime (default in future graphql-ruby versions)
  use GraphQL::Execution::Interpreter

  # Add built-in connections for pagination
  use GraphQL::Pagination::Connections

  use GraphQL::Analysis::AST # require to run Execution::Interpreter
  
  def self.unauthorized_object(error)
    raise GraphQL::ExecutionError, "Permissions configuration do not allow the object you requested, of type Coordinates"
  end
end
