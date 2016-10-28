class Report < ApplicationRecord
  validates_presence_of :category
  validates_presence_of :email
  validates_presence_of :description
end
