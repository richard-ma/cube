class AddTutorialIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :tutorial_id, :integer
  end
end
