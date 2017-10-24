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

  def self.scrape_nike_running
    doc = Nokogiri::HTML(open("http://www.adidas.com/us/women-running-shoes-new_arrivals?srule=top-sellers"))
    rnike = self.new
    rnike.brand = "Nike"
    rnike.name = doc.search("div.id").text.strip
      binding.pry
    rnike.name = doc.search("div.product-info-inner.content clearfix data-productname").text.strip
    rnike.description = " "
    rnike.price = " "
    rnike.url = " "
    
    rnike
  end

  def self.scrape_adidas_running

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
