class Pet < ApplicationRecord
  validates :name,                presence: true
  validates :sex,                 presence: true
  validates :type,                presence: true
  validates :birthday,            presence: true
  validates :color,               presence: true
  validates :hospital,            presence: true
  validates :medical_history,     presence: true
  validates :medicine,            presence: true
  validates :allergies,           presence: true
end
