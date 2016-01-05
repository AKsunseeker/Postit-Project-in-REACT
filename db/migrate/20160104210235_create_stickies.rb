class CreateStickies < ActiveRecord::Migration
  def change
    create_table :stickies do |t|
      t.string :note

      t.timestamps null: false
    end
  end
end
