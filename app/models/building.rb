class Building < ApplicationRecord
  enum category: [ :unlisted, :a, :b, :c ]
end
