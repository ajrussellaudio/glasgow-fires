class Fire < ApplicationRecord
  belongs_to :building
  has_many :sources
end
