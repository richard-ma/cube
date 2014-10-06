class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :filter_type
      t.string :regex

      t.timestamps
    end
  end
end
