class Task < ApplicationRecord
  belongs_to :person
  belongs_to :project

  def priority
    priority = (((self.updated_at + 1.hour) - self.created_at)/1.minute)
    priority
  end
end
