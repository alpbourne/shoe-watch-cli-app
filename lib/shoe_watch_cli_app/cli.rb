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
    input = gets.strip.downcase
  end

  def goodbye
    puts "Thank you for visiting Shoe Watch! Good luck in all your shoe endeavors!"
  end

end
