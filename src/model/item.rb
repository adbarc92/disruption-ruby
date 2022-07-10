require 'effect'
require 'success_rate'

module Disruption
  module Model
    # The model for a consumable item to be used in combat or the field.
    # id: the UUID associated with the item.
    # name: the name of the item.
    # description: the description of the item.
    # type: the type of the item.
    # battle_effect: the consequence of using the item in combat.
    # field_effect: the consequence of using the item in the field.
    # success_rate: the success rates associated with using the item.
    Item = Struct.new(
      :id,
      :name,
      :description,
      :type,
      :battle_effect,
      :field_effect,
      :success_rate,
    )
    TYPES = %w[HEALING STATUS BUFF].freeze
  end
end
