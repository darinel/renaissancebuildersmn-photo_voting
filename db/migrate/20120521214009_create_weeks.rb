class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.string :name
      t.date :date_start

      t.timestamps
    end
  end
end
