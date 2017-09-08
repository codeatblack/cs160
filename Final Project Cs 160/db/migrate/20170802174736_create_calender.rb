class CreateCalender < ActiveRecord::Migration
  def change
    create_table :calenders do |t|
      t.string :month
      t.integer :date
      t.string :entry
      t.string :image_name
      t.binary :image_contents
    end
  end
end
