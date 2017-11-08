class ShoeWatchCliApp::Shoes
  attr_accessor :name, :brand, :price, :description, :url

  @@running = []
  @@lifestyle = []

  def self.running
    @@running
  end

  def self.lifestyle
    @@lifestyle
  end

  def self.running_shoes
    @@running << ShoeWatchCliApp::Scraper.scrape_nike_running
    @@running << ShoeWatchCliApp::Scraper.scrape_under_armour_running
    @@running << ShoeWatchCliApp::Scraper.scrape_saucony_running
  end

  def self.lifestyle_shoes
    @@lifestyle << ShoeWatchCliApp::Scraper.scrape_nike_lifestyle
    @@lifestyle << ShoeWatchCliApp::Scraper.scrape_under_armour_lifestyle
    @@lifestyle << ShoeWatchCliApp::Scraper.scrape_saucony_lifestyle
  end

  def self.price_above(num)
    #returns an array of all the shoes with a price above the num passed in
    shoes_found = []

    @@running.each do |shoe|
      if shoe.price > num
        shoes_found << shoe
      end
    end
    @@lifestyle.each do |shoe|
      if shoe.price > num
        shoes_found << shoe
      end
    end

    shoes_found
  end
end
