class CreateDoodles < ActiveRecord::Migration
  def change
    create_table :doodles do |t|

      t.timestamps
    end
  end
end
