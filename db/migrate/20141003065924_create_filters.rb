class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.string :regex
      t.string :type

      t.timestamps
    end
  end
end
