class Drug < ApplicationRecord
  has_many :pharmacydrugs
  has_many :pharmacies, through: :pharmacydrugs
end
