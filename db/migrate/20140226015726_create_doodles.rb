class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
    	t.string :path
      t.timestamps
      t.references :room
    end
  end
end
