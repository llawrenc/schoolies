class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.date :date_occurred
      t.integer :category_id
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
