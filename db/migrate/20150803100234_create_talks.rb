class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|

      t.timestamps null: false
    end
  end
end
