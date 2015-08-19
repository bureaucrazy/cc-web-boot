require "./technology.rb"

class Computers < Technology
  attr_accessor :cpu_brand
  attr_accessor :ram_size
  attr_accessor :storage_size
  attr_accessor :os_installed

  def initialize(voltage)
    @voltage = voltage
  end

  def configure(color, cpu_brand, ram_size, storage_size, os_installed)
    @color = color
    @cpu_brand = cpu_brand
    @ram_size = ram_size
    @storage_size = storage_size
    @os_installed = os_installed
  end

  def activate
    puts post
    puts "Loading OS."
  end

  private

  def post
    "beep" if check_bios? && check_ram?
  end

  def check_bios?
    true
  end

  def check_ram?
    true
  end
end
