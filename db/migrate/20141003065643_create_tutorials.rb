class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :rss_feed
      t.string :title

      t.timestamps
    end
  end
end
