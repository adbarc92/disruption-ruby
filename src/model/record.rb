
require 'skill'

module Disruption
  module Model
    # The model for records of skills used in battle.
    BattleSkill = Struct.new(
      :current_uses,
      :skill,
      :user_ids,
      :target_ids,
      :health_success_degree,
      :status_effect_success,
      :position_success,
      :time_used,
      :battle_used,
      :action_number,
    )
  end
end
