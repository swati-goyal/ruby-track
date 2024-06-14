class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if 4 >= @speed && @speed >= 1
      221 * @speed
    elsif 8 >= @speed && @speed >= 5
      221 * @speed * 0.9
    elsif @speed == 9
      221 * @speed * 0.8
    else
      221 * @speed * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
