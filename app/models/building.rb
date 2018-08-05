class Building < ApplicationRecord
  enum category: [ :unlisted, :a, :b, :c ]
  has_many :fires
end
