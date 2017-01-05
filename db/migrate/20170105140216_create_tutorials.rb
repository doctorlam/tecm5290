class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.text :content
      t.text :video

      t.timestamps null: false
    end
  end
end
