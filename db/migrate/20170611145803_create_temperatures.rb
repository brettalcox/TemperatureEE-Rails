class CreateTemperatures < ActiveRecord::Migration[5.1]
  def change
    create_table :temperatures do |t|

      t.timestamps
    end
  end
end
