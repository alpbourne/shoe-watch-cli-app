class ShoeWatchCliApp::Shoes
  attr_accessor :name, :brand, :price, :description, :url

  def self.running
    self.running_shoes
  end

  # def self.running_shoes
  #   running_shoes = []
  #   running_shoes << self.scrape_adidas_running
  #   running_shoes << self.scrape_nike_running
  #   running_shoes << self.scrape_under_armour_running
  #   running_shoes
  # end

  def self.scrape_adidas_running
    #puts "hello"
    doc = Nokogiri::HTML(open("https://www.weather.com"))
    radidas = self.new
    radidas.brand = "Adidas"
    radidas.name = doc.search("div.id").text.strip
    puts radidas.name
      binding.pry
    #radidas.name = doc.search("div.product-info-inner.content clearfix data-productname").text.strip
    # radidas.description = " "
    # radidas.price = " "
    # radidas.url = " "
    #
    # radidas
  end

  def self.scrape_nike_running

  end

  def self.scrape_under_armour_running

  end

  def self.scrape_addidas_fashion

  end

  def self.scrape_nike_fashion

  end

  def self.scrape_under_armour_fashion

  end

end
