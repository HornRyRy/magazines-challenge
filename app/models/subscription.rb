class Subscription < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :reader

def print_details
    puts "#{self.reader.name} subscribed to #{self.magazine.title} for #{self.price}"
end



# "Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from
#         #{self.band.hometown}"
end
