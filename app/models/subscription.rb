class Subscription < ActiveRecord::Base
  belongs_to :magazine
  belongs_to :reader



# "Hello #{self.venue.city}!!!!! We are #{self.band.name} and we're from
#         #{self.band.hometown}"
end
