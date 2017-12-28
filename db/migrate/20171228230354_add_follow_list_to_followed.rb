class AddFollowListToFollowed < ActiveRecord::Migration[5.1]
  def change
    add_column :follow_lists, :followed, :boolean, default: false, null: false
  end
end
