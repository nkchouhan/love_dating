require 'rake'
namespace :default_interest do
  task :add_interest => :environment  do 
    error_msgs=[]
    ['Architecture', 'Aviation','Bikes/Motorcycles','Books/literature','Business networking','Cars','Cooking','Crafts','Cycling','Design','Dining out','Dogs','Fishing/hunting','Football/Soccer','Gambling','Gardening','Graffiti/Street art','Horses','Jewellery','Manga/Anime/Cosplay','Media','Movies/videos','Music/concerts','Night clubs/going out','Performing arts','Pets','Photo','Playing sports','Politics','Religion','Shopping','Tattoo','Travelling','Triathlon','TV','Vans/Trucks','Vegetarianism','Watching sports','Water sports','Yoga'].each do |inte|
      u=Interest.new
      u.name=inte
      u.save
      u.errors.each{|e| error_msgs<<e}
    end
    puts error_msgs  
  end
end