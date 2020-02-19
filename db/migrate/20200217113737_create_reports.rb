class CreateReports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.string :title
      t.text :description
      t.date :date_occurred
      t.category_id :integer
      t.subcategory_id :integer

      t.timestamps
    end
  end
end
