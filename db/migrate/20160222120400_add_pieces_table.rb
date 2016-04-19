class AddPiecesTable < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :image
      t.integer :artist_id
    end
  end
end
