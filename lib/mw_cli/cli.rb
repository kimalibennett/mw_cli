class CLI 
   
    def run 
        Scraper.scrape_ar
        system("clear")
        greeting
        while menu !='exit'
        end
        end_program

    end

    def greeting
        puts "Welcome to the Modern Warfare Season 6 AR Rundown! "  
    end

    def end_program
         puts "Off to the warzone!"
    end

    def menu
        puts "Please choose an option"
        input = gets.strip.downcase
        return input
    end

    def list_options 
        option_list = 
        new_array = option_list.sort {}
        new_array.each_with_index do | |
            puts "#{index + 1}. #{option}"
        end
    end

    def choose_options
        case option
        when "1"
            puts "Kilo 141"
        when "2"
            puts "FAL"
        when "3"
            puts "M4A1"
        when "4"
            puts "FR 5.56"
        when "5"
            puts "Oden"
        when "6"
            puts "M13"
        when "7"
            puts "FN Scar"
        when "8"
            puts "AK-47"
        when "9"
            puts "RAM-7"
        when "10"
            puts "Grau 5.56"
        when "11"
            puts "CR-56"
        when "12"
            puts "AN-94"
        when "13"
            puts "AS VAL"
        when "14"
            puts "XM4"
        when "15"
            puts "AK-47(Cold War)"
        when "17" 
            puts "Krig 6"
        when "18" 
            puts "QBZ-B3"
        when "19"
            puts "FFAR 1"
        when "20"
            puts "Groza"
    end

end

end
