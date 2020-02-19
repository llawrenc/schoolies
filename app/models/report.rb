class Report < ApplicationRecord
  #resourcify
  belongs_to :user
  belongs_to :category
  belongs_to :subcategory
  belongs_to :location
end
