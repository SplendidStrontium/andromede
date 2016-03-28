class CreateMagicItems < ActiveRecord::Migration
  def change
    create_table :magic_items do |t|
      t.string :name
      t.decimal :value_gp
      t.decimal :weight_gp
      t.text :desc_long

      t.timestamps null: false
    end
  end
end
