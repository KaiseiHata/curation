class CreateFollowLists < ActiveRecord::Migration[5.1]
  def change
    create_table :follow_lists do |t|

      t.timestamps
    end
  end
end
