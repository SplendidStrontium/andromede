class AddGalacticCoordToStars < ActiveRecord::Migration
  def change
		add_column :stars, :other_names, :string
		add_column :stars, :pri_id_key, :integer
		add_column :stars, :star_system, :string
		add_column :stars, :has_planets, :string
		add_column :stars, :is_inhabited, :string
		add_column :stars, :mass_solar, :float
		add_column :stars, :radius_solar, :float
		add_column :stars, :distance_ly_obj_to_earth, :float
		add_column :stars, :galactic_coord, :string
		add_column :stars, :my_tstamp, :string
  end
end
