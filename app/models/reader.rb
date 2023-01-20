class Reader < ActiveRecord::Base
    has_many :subscriptions
    has_many :magazines, through: :subscriptions


    #Visitation.create(date: Date.today, alien_id: self.id, earthling: earthling)



end