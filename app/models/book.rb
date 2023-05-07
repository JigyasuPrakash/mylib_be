class Book < ApplicationRecord
    enum level: { beginner: 0, intermediate: 1, advanced: 2 }
    has_and_belongs_to_many :authors
end
