class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
    	t.string :path

    	t.timestamps
    end
  end
end
