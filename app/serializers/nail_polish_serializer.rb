class NailPolishSerializer < ActiveModel::Serializer
  attributes :id, :brand, :color_name, :color
end
