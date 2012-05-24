class AddPlaceorderToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :place_order, :integer
  end
end
