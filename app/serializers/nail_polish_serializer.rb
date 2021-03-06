# frozen_string_literal: true

class NailPolishSerializer < ActiveModel::Serializer
  attributes :id, :brand, :color_name, :color, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
