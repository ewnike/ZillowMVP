class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    enable_extension "hstore"
    # add_column :properties, :preferences, :hstore
    # add_index :properties, :preferences, using: :gist
    create_table :properties do |t|
      t.text :description
      t.string :type
      t.integer :price
      t.string :city
      t.string :state
      t.string :address
      t.integer :zipcode
      t.date :date_listed
      t.date :year_built
      t.string :status
      t.integer :no_bed
      t.integer :no_bath
      t.boolean :garage
      t.string :parking
      t.float :tax
      t.hstore :contact
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
