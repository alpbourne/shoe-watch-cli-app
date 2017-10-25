class ShoeWatchCliApp::CLI

  def call
    greeting
    option_list
    decision
  end

  def greeting
    puts "Welcome to Shoe Watch! We are so glad you are here!"
    puts "Here are some of the latest arrivals. Please enter the number of the shoe type (1 or 2) you would like to see the latest trend in, 'list' for your options, or type exit."
  end

  def option_list
    @running_shoes = ShoeWatchCliApp::Shoes.running
    @running_lifestyle = ShoeWatchCliApp::Shoes.lifestyle
    puts ""
    puts "1. Running"
    @running_shoes.each do |shoe|
      puts "#{shoe.brand} - #{shoe.name}"
    end
    puts ""
    puts "2. Lifestyle"
    @running_lifestyle.each do |shoe|
      puts "#{shoe.brand} - #{shoe.name}"
    end
    puts ""
  end

  def display_running
    puts "Here are some details:"
    @running_details = ShoeWatchCliApp::Shoes.running
    @running_details.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.brand} - #{shoe.name}"
      puts "#{shoe.price}"
      puts "#{shoe.description}"
      puts "#{shoe.url}"
      puts ""
    end
  end

  def display_lifestyle
    puts "Here are some details:"
    @lifestyle_details = ShoeWatchCliApp::Shoes.lifestyle
    @lifestyle_details.each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.brand} - #{shoe.name}"
      puts "#{shoe.price}"
      puts "#{shoe.description}"
      puts "#{shoe.url}"
      puts ""
    end
  end

  def decision
    input = nil
    while input != "exit"
      puts "Please enter the number of the shoe type (1 or 2) you would like to see the latest trend in, 'list' for your options, or type exit."
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
  
end
