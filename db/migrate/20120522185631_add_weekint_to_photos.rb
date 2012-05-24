class AddWeekintToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :week_int, :integer
  end
end
