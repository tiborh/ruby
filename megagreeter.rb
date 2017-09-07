class MegaGreeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "\nHello #{name}!"
      end
    else
      puts "\nHello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      puts "\nGoodbye #{@names.join(", ")}."
    else
      puts "\nGoodbye #{@names}."
    end
    puts "Come back soon!"
  end
end
