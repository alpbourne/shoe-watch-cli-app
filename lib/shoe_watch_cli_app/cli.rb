class ShoeWatchCliApp::CLI

  def call
    greeting
    option_list
    decision
  end

  def greeting
    puts "Welcome to Shoe Watch! We are so glad you are here!"
    puts "Here are some shoe types you can check out:"
  end

  def option_list
    puts "1. Running"
    puts "2. Lifestyle"
    binding.pry
  end

  def decision
    input = nil
    while input != "exit"
      puts "Please enter the number of the shoe type you would like to see the latest trend in or 'list'for your options or type exit."
      input = gets.strip.downcase
      case input
      when "1"
        puts "Here are Running shoes..."
      when "2"
        puts "Here are Lifestyle shoes..."
      when "list"
        option_list
      when "exit"
        puts "Thank you for visiting Shoe Watch! Good luck in all your shoe endeavors!"
      else
        puts "Input not valid."
      end
    end
  end

  # def shoe_list
  #   @running_shoes = ShoeWatchCliApp::Shoes.running
  #   if @input == "1"
  #     @running_shoes.each do |shoe|
  #       puts "#{shoe.brand}"
  #       puts "#{shoe.name}"
  #       puts "#{shoe.description}"
  #       puts "#{shoe.price}"
  #       puts "#{shoe.description}"
  #     end
  #   end
  # end

end
