class Reader < ActiveRecord::Base
    has_many :subscriptions
    has_many :magazines, through: :subscriptions


    #Visitation.create(date: Date.today, alien_id: self.id, earthling: earthling)

    def subscribe(magazine, price)
        #Subscription.create(magazine: magazine, price: price, reader: self)
        self.subscriptions.create(magazine: magazine, price: price)
    end

    def total_subscription_price
        self.subscriptions.sum(:price)
    end

    def cancel_subscription(magazine)
        ##self.magazines.delete(magazine)  #### doesn't work
        # ## another solution:
        # subscription_to_remove = self.subscriptions.where(magazine: magazine).first
        # Subscription.delete(subscription_to_remove)
        # ##
        
        self.subscriptions.delete(self.subscriptions.where(magazine: magazine))
    end

end