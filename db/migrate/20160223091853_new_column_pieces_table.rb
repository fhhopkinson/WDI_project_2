class NewColumnPiecesTable < ActiveRecord::Migration
  def change
  add_column :pieces, :profile_pic, :string
  end
end
