class Person < ApplicationRecord
    has_many :dogs
    has_one_attached :picture
end