class CreatePsaveds < ActiveRecord::Migration[5.1]
  def change
    enable_extension "hstore"
    add_column :psaveds, :preferences, :hstore
    add_index :psaveds, :preferences, using: :gist
    create_table :psaveds do |t|
      t.references :user, foreign_key: true
      t.references :property, foreign_key: true
      t.boolean :favorited
      t.hstore :saved_search

      t.timestamps
    end
  end
end
