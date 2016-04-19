class AddColumnsToArtistsTable < ActiveRecord::Migration
  def change
    add_column :artists, :bio, :text
    add_column :artists, :image, :string
  end
end
