class PatientSerializer < ActiveModel::Serializer
  attributes :id, :"patient.no", :first_name, :last_name, :dob, :diagnosis, :assesment

  has_many :assessments
  has_many :pocs
  has_many :users
end
