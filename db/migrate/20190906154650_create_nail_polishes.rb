class CreateNailPolishes < ActiveRecord::Migration[5.2]
  def change
    create_table :nail_polishes do |t|
      t.string :brand
      t.string :color_name
      t.string :color

      t.timestamps
    end
  end
end
