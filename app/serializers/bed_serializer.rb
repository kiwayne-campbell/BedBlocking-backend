class BedSerializer < ActiveModel::Serializer
  attributes :id, :hospital_name, :hospital_location, :beds_available

  belongs_to :patient
end
