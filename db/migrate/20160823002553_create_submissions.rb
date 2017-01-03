class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :user_id
      t.integer :assignment_id
      t.text :description

      t.timestamps null: false
    end
  end
end
