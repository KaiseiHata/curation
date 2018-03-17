class RemoveScreenNameFromFllowLists < ActiveRecord::Migration[5.1]
  def change
    remove_column :follow_lists, :screen_name, :string
  end
end
