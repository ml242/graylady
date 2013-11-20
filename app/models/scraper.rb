class Scraper
  require 'HTTParty'
  require 'Nokogiri'
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_hrefs
    hrefs_arr = []
    response = HTTParty.get(@url)
    doc = Nokogiri::HTML(response)
    # hrefs = doc.css('.Text')
      # hrefs.each do |link|
      #   hrefs_arr << link.text
      # end
    h = doc.css('a')
      h.each do |link|
        hrefs_arr << link["href"]
      end
    hrefs_arr
  end

end
