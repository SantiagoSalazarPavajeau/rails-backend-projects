require 'json'
class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :key, :value, :text, :id, :created_at, :updated_at

  attribute :image do |object|
    object.image
  end
end
