class CreateFollowLists < ActiveRecord::Migration[5.1]
  def change
    create_table :follow_lists do |t|
      t.bigint :user_id
      t.string :screen_name
      t.timestamps
    end
  end
end
