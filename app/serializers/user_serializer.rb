class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :patient_ids

  has_many :patients
end
