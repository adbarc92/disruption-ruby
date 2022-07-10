module Disruption
  module Model
    module Effect
      # The consequence of using an arbitrary item or skill in combat.
      # id: the UUID of the battle effect.
      # name: the name of the battle effect.
      # description: a description of the battle effect.
      # type: the type of the battle effect; health, status, position, or combo.
      # user_health_modifier: the way that the user's health is modified by the battle effect.
      # target_health_modifier: the way that the target's health is modified by the battle effect.
      # user_status: the status set on the user of the battle effect if successful.
      # target_status: the status set on the target of the battle effect is successful.
      # user_position_modifier: the way that the user's position is modified by the battle effect.
      # target_position_modifier: the way that the target's position is modified by the battle effect.
      BattleEffect = Struct.new(
        :id,
        :name,
        :description,
        :type,
        :user_health_modifier,
        :target_health_modifier,
        :user_status,
        :target_status,
        :user_position_modifier,
        :target_position_modifier,
      )

      # Utility methods for getting and applying battle effects.
      module BattleEffects
        # self.get_by_id
        # self.get_by_name
        # self.get_by_type
        # self.get_by_user_status
      end

      # The consequence of using an arbitrary item or skill in the field.
      # id: the UUID of the effect.
      # name: the name of the effect.
      # description: a description of the effect.
      # type: the type of the field effect; health, status, or combo.
      # target_health_modifier: the way that the target's health is modified by the field effect.
      # target_status: the way that the target's status is modified by the field effect.
      FieldEffect = Struct.new(
        :id,
        :name,
        :description,
        :type,
        :target_health_modifier,
        :target_status,
      )

      FIELD_TYPE = %w[HEALTH STATUS COMBO].freeze
      BATTLE_TYPE = %w[POSITION].push(FIELD_TYPE).freeze
    end
  end
end
