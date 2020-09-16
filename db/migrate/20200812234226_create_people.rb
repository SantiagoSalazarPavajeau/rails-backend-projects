class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :username
      t.string :password_digest
      t.text :image

      t.timestamps
    end
  end
end
