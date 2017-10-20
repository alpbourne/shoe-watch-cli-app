class ShoeWatchCliApp::CLI
  def call
    start
  end

  def start
    greeting
  end

  def greeting
    puts "Welcome to Shoe Watch! We are so glad you are here!"
    puts "Please enter the number of the type of shoe you would like to see the latest trend in?"
    puts "1. Running"
    puts "2. Fashion"
    puts "3. Training"
    input = gets.strip.downcase
  end
end
