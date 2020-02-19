json.extract! report, :id, :title, :date_occurred, :description, :user_id, :category_id, :subcategory_id, :created_at, :updated_at
json.url report_url(report, format: :json)
