require 'position'
require 'family'

module Disruption
  module Model
    # The model for the partner to enhance usage of a skill or device.
    # partner_position: the required positions for the partner-enhancement.
    # partner_family: the family to which the partner must belong in order to enhance the skill.
    # partner_turn_proximity: how soon the partner must be able to act in order to enhance the skill.
    PartnerRequirements = Struct.new(
      :partner_position,
      :partner_turn_proximity,
      :partner_family,
    )
  end
end
