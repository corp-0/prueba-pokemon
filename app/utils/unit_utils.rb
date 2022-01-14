class UnitUtils
  def self.hectogram_to_kg(hectograms)
    unit = 'kilogramo'
    kg = (hectograms * 0.1).ceil(2)
    if kg < 1
      unit = 'gramo'
      g = (kg * 1000).ceil(2)
      humanize_unit(g, unit)
    end
    humanize_unit(kg, unit)
  end

  def self.decimeter_to_meter(decimeters)
    unit = 'metro'
    m = (decimeters * 0.1).ceil(2)
    if m < 1
      unit = 'centímetro'
      cm = (m * 100).ceil(2)
      return humanize_unit(cm, unit)
    end
    humanize_unit(m, unit)
  end

  def self.humanize_unit(value, unit)
    if value == 1
      "#{try_integer(value)} #{unit}"
    else
      "#{try_integer(value)} #{unit}s"
    end
  end

  def self.try_integer(float_number)
    float_number.to_i == float_number ? float_number.to_i : float_number
  end
end
