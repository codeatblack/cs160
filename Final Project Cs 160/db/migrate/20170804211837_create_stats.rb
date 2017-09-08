class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string :picture
      t.timestamps null: false
    end
  end
end
