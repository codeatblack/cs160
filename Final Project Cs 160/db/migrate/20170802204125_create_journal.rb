class CreateJournal < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :date
      t.string :time
      t.string :hero
      t.string :pic_name
      t.string :caption
      t.binary :pic_data
      t.string :workout
    end
  end
end
