require "./technology.rb"

class Speakers < Technology
  attr_accessor :wattage_rms
  attr_accessor :magnet_type
  attr_accessor :dome_material
  attr_reader :green_led

  def initialize(voltage)
    @voltage = voltage
  end

  def configure(wattage_rms, magnet_type, dome_material)
    @wattage_rms = wattage_rms
    @magnet_type = magnet_type
    @dome_material = dome_material
  end

  def activate
    @green_led == ready?
  end

  private

  def ready?
    activate_display? && capacitor_status?
  end

  def activate_display?
    load_settings?
  end

  def capacitor_status?
    capacitor1? && capacitor2? && capacitor3?
  end

  def capacitor1?
    true
  end

  def capacitor2?
    true
  end

  def capacitor3?
    true
  end

  def load_settings?
    read_vram?
  end

  def read_vram
    true
  end
end
