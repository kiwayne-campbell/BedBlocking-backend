class Patient < ApplicationRecord
  has_many :assesments
  has_many :pocs
  has_and_belongs_to_many :users
end
