class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :breed
  belongs_to :person
end
