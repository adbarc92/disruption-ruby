module Disruption
  module Model
    # The model for success rates of using items or devices.
    # user_health_success_rate: the success rate for a user's health to be altered.
    # target_health_success_rate: the success rate for a target's health to be altered.
    # user_position_success_rate: the success rate for a user's position to be altered.
    # target_position_success_rate: the success rate for a target's position to be altered.
    # user_status_effect_success_rate: the success rate for a user's status to be altered.
    # target_status_effect_success_rate:the success rate for a target's status to be altered.
    SuccessRate = Struct.new(
      :user_health_success_rate,
      :target_health_success_rate,
      :user_position_success_rate,
      :target_position_success_rate,
      :user_status_effect_success_rate,
      :target_status_effect_success_rate,
    )
  end
end
