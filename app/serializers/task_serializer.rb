class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :id, :person_id, :project_id, :completed, :created_at, :updated_at, :priority

end
