module Disruption
  module Model
    # The model for positions in combat.
    Position = Struct.new(
      :x,
      :y,
      keyword_init: true,
    )

    # The model for position modification in combat.
    PositionModifier = Struct.new(
      :direction,
      :degree,
    )

    DIRECTIONS = %w[UP RIGHT DOWN LEFT].freeze
    POSITIONS = {
      SPOT_FRONT_TOP: Position.new(x: 0, y: 0),
      SPOT_FRONT_MID: Position.new(x: 0, y: 1),
      SPOT_FRONT_BOTTOM: Position.new(x: 0, y: 2),
      SPOT_MID_TOP: Position.new(x: 1, y: 0),
      SPOT_MID_MID: Position.new(x: 1, y: 1),
      SPOT_MID_BOTTOM: Position.new(x: 1, y: 2),
      SPOT_BACK_TOP: Position.new(x: 2, y: 0),
      SPOT_BACK_MID: Position.new(x: 2, y: 1),
      SPOT_BACK_BOTTOM: Position.new(x: 2, y: 2),
    }.freeze

    ROWS = {
      TOP: [SPOT_FRONT_TOP, SPOT_MID_TOP, SPOT_BACK_TOP],
      MID: [SPOT_FRONT_MID, SPOT_MID_MID, SPOT_BACK_MID],
      BOTTOM: [SPOT_FRONT_BOTTOM, SPOT_MID_BOTTOM, SPOT_BACK_BOTTOM],
    }.freeze

    COLUMNS = {
      FRONT: [SPOT_FRONT_TOP, SPOT_FRONT_MID, SPOT_FRONT_BOTTOM],
      MID: [SPOT_MID_TOP, SPOT_MID_MID, SPOT_MID_BOTTOM],
      BACK: [SPOT_BACK_TOP, SPOT_BACK_MID, SPOT_BACK_BOTTOM],
    }.freeze

    # A set of utility methods regarding unit positions.
    module Positions
      # Is the unit in the front column?
      def in_front_column?(unit)
        unit.position.x.zero?
      end

      # Is the unit in the middle column?
      def in_mid_column?(unit)
        unit.position.x == 1
      end

      # Is the unit in the back column?
      def in_back_column?(unit)
        unit.position.x == 2
      end

      # Is the unit in the top row?
      def in_top_row?(unit)
        unit.position.y.zero?
      end

      # Is the unit in the middle row?
      def in_mid_row?(unit)
        unit.position.y == 1
      end

      # Is the unit in the bottom row?
      def in_bottom_row?(unit)
        unit.position.y == 2
      end
    end
  end
end
