class Dogs
  # Only use when required to access from outside class.
  # attr_accessor :color
  # attr_accessor :type
  # attr_reader :bowl
  attr_accessor :bowl_size

  def initialize(color = "white", type = "spitz")
    @color, @type = color, type
    @bowl = []
    @bowl_size = 3
  end

  def give(bone)
    if @bowl.count < @bowl_size then
      # Originally I passed the .size value, but I can access the .size
      # when doing unshift.
      # @bowl << bone.size
      @bowl << bone
      "Thanks for the '#{bone.size}' bone."
    elsif @bowl.count > @bowl_size then
      "Omigosh! Plate is overflowing!"
    else
      "No thanks! Plate is full."
    end
  end

  def eat_bone
    if @bowl.count > 0 then
      "Yummy! I ate a '#{@bowl.shift.size}' bone!"
    else
      "More please! Plate is empty."
    end
  end

end
