class ShoeWatchCliApp::Shoes
  attr_accessor :name, :brand, :price, :description, :url

  def self.running
    self.running_shoes
  end

  def self.lifestyle
    self.lifestyle_shoes
  end

  def self.running_shoes
    running_shoes = []
    running_shoes << self.scrape_nike_running
    running_shoes << self.scrape_under_armour_running
    running_shoes << self.scrape_saucony_running
    running_shoes
  end

  def self.lifestyle_shoes
    lifestyle_shoes = []
    lifestyle_shoes << self.scrape_nike_lifestyle
    lifestyle_shoes << self.scrape_under_armour_lifestyle
    lifestyle_shoes << self.scrape_saucony_lifestyle
    lifestyle_shoes
  end

  def self.scrape_nike_running
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pd/zoom-vaporfly-4-unisex-running-shoe/pid-11833217/pgid-11936020"))
    rnike = self.new
    rnike.brand = "Nike"
    rnike.name =  doc.css("div.d-lg-ib.mb0-sm.mb8-lg h1.ncss-brand.pb1-sm.u-uppercase.fs24-sm.fs32-lg.lh18-sm.productTitle").text.strip
    rnike.description = doc.css("div.pi-pdpmainbody p")[1].text.strip
    rnike.price = doc.css("div.d-lg-ib.mb0-sm.mb8-lg h2.rr-subtitle span.rr-price span").text.strip
    binding.pry
    rnike.url = "https://store.nike.com/us/en_us/pd/zoom-vaporfly-4-unisex-running-shoe/pid-11833217/pgid-11936020"
    rnike
  end

  def self.scrape_under_armour_running
    doc = Nokogiri::HTML(open("https://www.underarmour.com/en-us/ua-w-highlight-delta-2/pid1295766-002"))
    rua = self.new
    rua.brand = "Under Armour"
    rua.name = doc.css("h1.buypanel_producttitle span").text.strip
    rua.description = doc.css("div.science-paragraph").text.gsub("â","`").strip
    rua.price = doc.css("span.buypanel_productprice-value span").text.strip
    rua.url = "https://www.underarmour.com/en-us/ua-w-highlight-delta-2/pid1295766-002"
    rua
  end

  def self.scrape_saucony_running
    doc = Nokogiri::HTML(open("http://www.saucony.com/en/nyc-freedom-iso/30835W.html?dwvar_30835W_color=S10355-18#cgid=womens-new-arrivals&prefn1=itemStyle&prefv1=Running&prefn2=productType&prefv2=SH&srule=newest&start=1"))
    rsaucony = self.new
    rsaucony.brand = "Saucony"
    rsaucony.name = doc.css("div.product-v2-name h1").text.strip
    rsaucony.description = doc.css("div.description")[1].text.strip
    rsaucony.price = doc.css("div.product-price span.price-sales").text.strip
    rsaucony.url = "http://www.saucony.com/en/nyc-freedom-iso/30835W.html?dwvar_30835W_color=S10355-18#cgid=womens-new-arrivals&prefn1=itemStyle&prefv1=Running&prefn2=productType&prefv2=SH&srule=newest&start=1"
    rsaucony
  end

  def self.scrape_nike_lifestyle
    doc = Nokogiri::HTML(open("https://store.nike.com/us/en_us/pd/roshe-one-womens-shoe/pid-11827121/pgid-11166166"))
    lnike = self.new
    lnike.brand = "Nike"
    lnike.name = doc.css("div.d-lg-ib.mb0-sm.mb8-lg h1.ncss-brand.pb1-sm.u-uppercase.fs24-sm.fs32-lg.lh18-sm.productTitle").text.strip
    lnike.description = doc.css("div.pi-pdpmainbody p")[1].text.strip
    lnike.price = doc.css("div.exp-pdp-product-price span").text.strip
    lnike.url = "https://store.nike.com/us/en_us/pd/roshe-one-womens-shoe/pid-11827121/pgid-11166166"
    lnike
  end

  def self.scrape_under_armour_lifestyle
    doc = Nokogiri::HTML(open("https://www.underarmour.com/en-us/womens-ua-threadborne-shift-lifestyle-shoes/pid3019918-600"))
    lua = self.new
    lua.brand = "Under Armour"
    lua.name = doc.css("h1.buypanel_producttitle span").text.strip
    lua.description = doc.css("div.product-dna li")[0].text.gsub("â\u0084¢","").strip
    lua.price = doc.css("span.buypanel_productprice-value span").text.strip
    lua.url = "https://www.underarmour.com/en-us/womens-ua-threadborne-shift-lifestyle-shoes/pid3019918-600"
    lua
  end
  def self.scrape_saucony_lifestyle
    doc = Nokogiri::HTML(open("http://www.saucony.com/en/dxn-trainer-cl-nubuck/29331W.html?dwvar_29331W_color=S60360-1#cgid=womens-new-arrivals&prefn1=itemStyle&prefv1=Casual&prefn2=productType&prefv2=SH&srule=newest&start=1"))
    lsaucony = self.new
    lsaucony.brand = "Saucony"
    lsaucony.name = doc.css("div.product-v2-name h1").text.strip
    lsaucony.description = doc.css("div.description")[1].text.strip
    lsaucony.price = doc.css("div.product-price span.price-sales").text.strip
    lsaucony.url = "http://www.saucony.com/en/dxn-trainer-cl-nubuck/29331W.html?dwvar_29331W_color=S60360-1#cgid=womens-new-arrivals&prefn1=itemStyle&prefv1=Casual&prefn2=productType&prefv2=SH&srule=newest&start=1"
    lsaucony
  end
end
