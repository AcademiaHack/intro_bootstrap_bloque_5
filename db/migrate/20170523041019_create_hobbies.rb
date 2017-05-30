class CreateHobbies < ActiveRecord::Migration[5.1]
  def change
    create_table :hobbies do |t|
      t.string :name
      t.integer :kind
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
