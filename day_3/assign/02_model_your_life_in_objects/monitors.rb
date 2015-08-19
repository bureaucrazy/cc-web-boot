require "./technology.rb"

class Monitors < Technology
  attr_accessor :display_type
  attr_accessor :display_size
  attr_accessor :hdmi_count
  attr_accessor :dvi_count

  def initialize(voltage)
    @voltage = voltage
  end

  def configure(display_type, display_size, hdmi_count, dvi_count)
    @display_type = display_type
    @display_size = display_size
    @hdmi_count = hdmi_count
    @dvi_count = dvi_count
  end

  def update_status
    puts sleep
  end

  private

  def sleep
    "Monitor going to sleep" unless input_signal?
  end

  def input_signal?
    check_hdmi? || check_dvi?
  end

  def check_hdmi?
    true
  end

  def check_dvi?
    false
  end
end
