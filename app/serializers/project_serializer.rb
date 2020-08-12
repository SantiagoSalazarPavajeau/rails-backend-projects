class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :started, :description, :id, :created_at, :updated_at
end
