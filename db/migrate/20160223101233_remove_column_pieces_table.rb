class RemoveColumnPiecesTable < ActiveRecord::Migration
  def change
   remove_column :pieces, :profile_pic, :string
  end
end
