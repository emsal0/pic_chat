class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|
    	t.string :path
      t.timestamps
    end
  end
end
