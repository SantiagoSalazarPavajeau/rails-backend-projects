class PersonSerializer
  include FastJsonapi::ObjectSerializer
  attributes :key, :value, :text, :image, :id, :created_at, :updated_at
end
