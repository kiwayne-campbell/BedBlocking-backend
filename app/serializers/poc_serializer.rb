class PocSerializer < ActiveModel::Serializer
  attributes :id, :home_care, :meals_on_wheels, :frozen_meals, :day_care, :day_hospital, :district_nurse, :physio, :residential_home, :nursing_home, :other, :notes, :doa, :dod

  belongs_to :patient
end
