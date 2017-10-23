class ShoeWatchCliApp::CLI

  def call
    greeting
    goodbye
  end

  def greeting
    puts "Welcome to Shoe Watch! We are so glad you are here!"
    puts "Please enter the number of the type of shoe you would like to see the latest trend in?"
    puts "1. Running"
    puts "2. Fashion Sneaker"
    @input = gets.strip
  end

  def shoe_list
    @running_shoes = ShoeWatchCliApp::Shoes.running
    if @input == "1"
      @running_shoes.each do |shoe|
        puts "#{shoe.brand}"
        puts "#{shoe.name}"
        puts "#{shoe.description}"
        puts "#{shoe.price}"
        puts "#{shoe.description}"
      end
    end
  end

  def goodbye
    puts "Thank you for visiting Shoe Watch! Good luck in all your shoe endeavors!"
  end

end
