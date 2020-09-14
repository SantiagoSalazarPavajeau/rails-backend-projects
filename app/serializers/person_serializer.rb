require 'json'
class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :image, :id

  # attribute :image do |object|
  #   object.image
  # end
end
