class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :week
      t.integer :photo

      t.timestamps
    end
  end
end
