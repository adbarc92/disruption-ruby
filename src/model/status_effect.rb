module Disruption
  module Model
    # Status effects are temporarily persisting effects that change the way that units function both in-field and in-combat.
    # name: the name of the status effect.
    # type: the type of the status effect.
    # battle_activation_time: when the status takes effect.
    # battle_effect: the consequence of the status in combat.
    # field_effect: the consequence of the status in the field.
    # degree: the strength of the status effect.
    # priority: the order of operations for status effects.
    # duration: the number of turns or steps until a status terminates.
    StatusEffect = Struct.new(
      :name,
      :type,
      :battle_activation_time,
      :battle_effect,
      :field_effect,
      :degree,
      :priority,
      :duration,
    )

    TYPES = %w[DOT BUFF DEBUFF].freeze
    ACTIVATION_TIMES = %w[TURN_START TURN_END ROUND_START ROUND_END].freeze
  end
end
