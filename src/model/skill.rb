require 'position'
require 'effect'
require 'animation'
require 'partner_requirements'

module Disruption
  module Model
    # Skills are special powers used by unit in battle.
    # id: the UUID used to identify the skill.
    # name: the name of the skill.
    # description: the description of the skill.
    # usable_positions: the positions from which the skill is usable.
    # target_positions: the positions the skill can be used to target.
    # battle_effects: the battle effects associated with the skill.
    # family: the group to which the skill belongs.
    # animations: the animations associated with using the skill.
    # action_cost: the number of actions a skill requires and would consume on use.
    # partner_requirements: the requirements for partner enhancement.
    # outcome_stats: the ability scores that determine success or failure.
    Skill = Struct.new(
      :id,
      :name,
      :description,
      :usable_positions,
      :target_positions,
      :battle_effects,
      :family,
      :animations,
      :action_cost,
      :partner_requirements,
      :outcome_stats,
    )
  end

  # The set of ability scores that determine the outcome of using a skill.
  OutcomeStats = Struct.new(
    :user_health_stat,
    :target_health_stat,
    :user_status_stat,
    :target_status_stat,
    :user_accuracy_stat,
    :target_accuracy_stat,
    :user_position_stat,
    :target_position_stat,
  )

  # Utility methods for getting skills.
  module Skills
    # get beneficial effects
    # get harmful effects
    # get skills by family
    # get skills by action cost
  end
end
