class ShoeWatchCliApp::CLI

  def call
    greeting
    option_list
    decision
  end

  def greeting
    puts "Welcome to Shoe Watch! We are so glad you are here!"
    puts "Here are some of the latest arrivals. Please enter the number of the shoe type (1 or 2) you would like to see the latest trend in, 'list'for your options, or type exit."
  end

  def option_list
    @running_shoes = ShoeWatchCliApp::Shoes.running
    @running_lifestyle = ShoeWatchCliApp::Shoes.lifestyle
    puts "1. Running"
    @running_shoes.each do |shoe|
      puts "#{shoe.brand} - #{shoe.name}"
    end
    puts "2. Lifestyle"
    @running_lifestyle.each do |shoe|
      puts "#{shoe.brand} - #{shoe.name}"
    end
  end

  def display_running
    puts "Here are some running shoes:"
    # @running_shoes = ShoeWatchCliApp::Shoes.running
    # @running_shoes.each.with_index(1) do |shoe, i|
    #   puts "#{i}. #{shoe.brand} - #{shoe.name}"
    # end
    # puts "Would you like more details?"
    #   binding.pry
  end

  def display_lifestyle
    puts "Here are some Lifestyle shoes:"
    # @running_lifestyle = ShoeWatchCliApp::Shoes.lifestyle
    # @running_lifestyle.each.with_index(1) do |shoe, i|
    #   puts "#{i}. #{shoe.brand} - #{shoe.name}"
    # end
    # puts "Would you like more details? Y/N"
    # input = gets.strip
    # case input
    # when "Y"
    #   puts "lifestyle details"
    # when "N"
    #   puts "We are taking you back to the main menu"
    #   decision
    # end
  end

  def decision
    input = nil
    while input != "exit"
      puts "Please enter the number of the shoe type you would like to see details for, 'options' for a list of your options, or type exit."
      input = gets.strip.downcase
      case input
      when "1"
        display_running
      when "2"
        display_lifestyle
      when "list"
        option_list
      when "exit"
        puts "Thank you for visiting Shoe Watch! Good luck in all your shoe endeavors!"
      else
        puts "Input not valid."
      end
    end
  end


  # def decision
  #   @running_shoes = ShoeWatchCliApp::Shoes.running
  #   @lifstyle_shoes = ShoeWatchCliApp::Shoes.running
  #   input = nil
  #   while input != "exit"
  #     puts "Please enter the number of the shoe type you would like to see the latest trend in or 'list'for your options or type exit."
  #     input = gets.strip.downcase
  #     input.to_i == 1
  #       @running_shoes.each.with_index(1) do |shoe, i|
  #       puts "#{i}. #{shoe.brand} - #{shoe.name}"
  #     elsif input.to_i == 1
  #       @lifestyle_shoes.each.with_index(1) do |shoe, i|
  #       puts "#{i}. #{shoe.brand} - #{shoe.name}"
  #     elsif "list"
  #       option_list
  #     elsif "exit"
  #       puts "Thank you for visiting Shoe Watch! Good luck in all your shoe endeavors!"
  #     else
  #       puts "Input not valid."
  #     end
  #   end
  # end

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
