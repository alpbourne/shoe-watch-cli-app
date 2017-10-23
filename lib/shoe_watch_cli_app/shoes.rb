class ShoeWatchCliApp::Shoes
  attr_accessor :name, :brand, :price, :description, :url

  def self.running
    self.running_shoes
  end

  def self.running_shoes
    running_shoes = []
    running_shoes << self.scrape_addidas_running
    running_shoes << self.scrape_nike_running
    running_shoes << self.scrape_under_armour_running
    running_shoes
  end

  def self.scrape_addidas_running

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
