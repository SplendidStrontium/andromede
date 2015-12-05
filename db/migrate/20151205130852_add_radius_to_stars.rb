class AddRadiusToStars < ActiveRecord::Migration
  def change
		add_column :stars, :radius_m, :float
  end
end
