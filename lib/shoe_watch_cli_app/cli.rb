class ShoeWatchCliApp::CLI
  def call
    start
  end

  def start
    greeting
  end

  def greeting
    puts "Welcome to Shoe Watch! Please select the type of shoe you would like to see the latest trend in?"
    input = gets.strip.downcase
  end
end
