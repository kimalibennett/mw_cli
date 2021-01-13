class Scraper 
    URL = "https://www.rockpapershotgun.com/2020/10/26/warzone-weapon-stats-season-6-recoil-patterns-damage-profiles-range-dropoff-values-and-more-2/"

    def self.get_url
     URL
    end

    def self.scrape_ar
        uri = URI(URL)
        response = Net::HTTP.get(uri)
        doc = Nokogiri::HTML(response)
        ar_table = doc.search("table").first.css("tbody").css("tr")
        ar_table.each_with_index do |row,index_x|
            css_row = ".row-#{index_x+2}"
            # binding.pry
        end
    # .css(".row-2").css(".column-1").text
    #     damage = 
    #     shots_to_kill =
    #     rpm = 
    #     mag_size =
    #     reload_speed = 
    #     ads_time = 
    end

    
end 
