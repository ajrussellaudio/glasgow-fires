class Building < ApplicationRecord
  enum category: [ :unlisted, :A, :B, :C ]
  has_many :fires
end
