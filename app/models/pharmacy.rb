class Pharmacy < ApplicationRecord
  has_many :pharmacydrugs

  has_many :drugs, through: :pharmacydrugs
end
