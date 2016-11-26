class Pharmacydrug < ApplicationRecord
  belongs_to :pharmacy
  belongs_to :drug
end
