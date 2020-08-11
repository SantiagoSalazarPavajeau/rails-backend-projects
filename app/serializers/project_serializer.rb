class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :started, :description, :created_at, :updated_at
end
