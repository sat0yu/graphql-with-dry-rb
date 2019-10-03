require 'graphql'
require 'dry-struct'
require 'byebug'

module Types
  include Dry.Types
end

module Model
  class Hoge < Dry::Struct
    attribute :hop, Types::String
    attribute :step, Types::Integer
    attribute :jump, Types::Strict::Array.of(Types::String)
  end
end

module HogeRepository
  def self.getAllHoge
    (1..10).map do |i|
      Model::Hoge.new(hop: i.to_s, step: i, jump: [i.to_s])
    end
  end
end

module SampleGraphQL
  module Types
    class Hoge < GraphQL::Schema::Object
      field :hop, String, null: false
      field :step, Integer, null: false
      field :jump, [String], null: false
    end

    class Query < GraphQL::Schema::Object
      field :hoges, [Types::Hoge], null: true

      def hoges
        HogeRepository.getAllHoge
      end
    end
  end

  class Schema < GraphQL::Schema
    query Types::Query
  end
end

