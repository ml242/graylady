require 'spec_helper'

describe Scraper do
  # it "takes a URL as a paramater" do
  #   scraper = Scraper.new("myhomepage.com")
  #   expect(scraper.url).to eq("myhomepage.com")
  # end

  # it "has method get_hrefs that returns links" do
  #   scraper = Scraper.new("http://jonl.org")
  #   expect(scraper.get_hrefs.class).to eq(Array)
  # end

  describe ".new" do
    # it "initialies with a url" do
    #   expect(Scraper.new("http:..nytimes.com")).to be
    #   expect(Scraper.new("http:..nytimes.com")).to_not raise_error
    # end
    it "raises an error without a url" do
      expect { Scraper.new }. to raise_error(ArgumentError)
    end
  end

  describe ".hrefs" do
    it "has method get_hrefs that returns links" do
      scraper = Scraper.new("http://jonl.org")
      expect(scraper.get_hrefs.class).to eq(Array)
    end
    it "uses Nokogiri to to scrape all the hrefs on the page" do
      scraper = Scraper.new('http://jonl.org/')
      expect(scraper.get_hrefs).to eq(["Hi/Happier/Happier.html", "Hi/Engineer/Engineer.html", "Hi/Composer/Composer.html", "Hi/Entrepreneur/Entrepreneur.html", "http://blog.jonl.org", "attachments/Jonathan_Leung's_Resume.pdf", "http://facebook.com/friendjonathanleung", "http://twitter.com/jonathanjleung"])
    end

  end
  it "has a method to get img links from the site"
end
