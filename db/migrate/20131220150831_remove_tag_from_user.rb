class RemoveTagFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :tag
  end
end
