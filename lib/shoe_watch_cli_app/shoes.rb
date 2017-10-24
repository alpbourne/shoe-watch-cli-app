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
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pd/zoom-vaporfly-4-unisex-running-shoe/pid-11833217/pgid-11936020"))
    rnike = self.new
    rnike.brand = "Nike"
    rnike.name =  doc.css("div.exp-product-header h1").text.strip
    rnike.description = doc.css("div.pi-pdpmainbody p")[1].text.strip
    rnike.price = doc.css("div.exp-pdp-product-price span").text.strip
    rnike.url = "https://store.nike.com/us/en_us/pd/zoom-vaporfly-4-unisex-running-shoe/pid-11833217/pgid-11936020"

    rnike
  end

  def self.scrape_under_armour_running
    doc = Nokogiri::HTML(open("https://www.underarmour.com/en-us/ua-w-highlight-delta-2/pid1295766-002"))
    rua = self.new
    rua.brand = "Under Armour"
    rua.name = doc.css("h1.buypanel_producttitle span").text.strip
    rua.description = doc.css("div.science-paragraph").text.strip
    binding.pry
  end

  def self.scrape_adidas_running

  end

  def self.scrape_addidas_fashion

  end

  def self.scrape_nike_fashion

  end

  def self.scrape_under_armour_fashion

  end

end
