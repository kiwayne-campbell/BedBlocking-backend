class Patient < ApplicationRecord
  has_many :assessments
  has_many :pocs
  has_and_belongs_to_many :users, optional: true
end
