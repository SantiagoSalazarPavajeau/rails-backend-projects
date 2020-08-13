class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.text :description
      t.belongs_to :person, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true
      t.boolean :completed
      
      t.timestamps
    end
  end
end
