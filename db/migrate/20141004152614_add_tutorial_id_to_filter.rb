class AddTutorialIdToFilter < ActiveRecord::Migration
  def change
    add_column :filters, :tutorial_id, :integer
  end
end
