class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.text :ask
      t.text :answer

      t.timestamps null: false
    end
  end
end
