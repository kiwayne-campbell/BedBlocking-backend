class PatientSerializer < ActiveModel::Serializer
  attributes :id, :patient_no, :first_name, :last_name, :diagnosis

  has_many :assessments
  has_many :pocs
  has_many :users
end
