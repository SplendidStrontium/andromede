class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
			t.string :common_name
			t.float :mass_g

      t.timestamps
    end
  end
end
