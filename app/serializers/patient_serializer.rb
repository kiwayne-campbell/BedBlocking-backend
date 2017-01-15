class PatientSerializer < ActiveModel::Serializer
  attributes :id, :"patient.no", :first_name, :last_name, :dob, :diagnosis, :assesment
end
