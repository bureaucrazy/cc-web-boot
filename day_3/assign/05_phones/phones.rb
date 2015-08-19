# Build a class Phone that takes phone "brand" and "type" as parameters.
#
# Add two methods: call
# Add two private methods: connect to internet

class Phones
  def initialize(brand, type)
    @brand, @type = brand, type
    @contact = ""
  end

  def call(contact)
    if @contact == contact
      puts "Already connected to your #{contact}."
    else
      if @contact == ""
        @contact = contact
        puts "Calling your #{@contact}..."
        puts connect_to_internet
        puts "Blah blah blah"
      else
        puts "Failed to connect to your #{contact} due to 3-way restriction."
      end
    end
  end

  def end_call
    puts "Hanging up with your #{@contact}..."
    @contact = ""
    puts disconnect_from_internet
  end

  private
  def connect_to_internet
    "Connected."
  end

  def disconnect_from_internet
    "Disconnected."
  end
end
