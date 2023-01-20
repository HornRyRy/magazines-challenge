class Magazine < ActiveRecord::Base
  has_many :subscriptions
  has_many :readers, through: :subscriptions


def email_list
    self.readers.map{|r| r.email}.join(";")
    ##self.readers.map(&:email).join(";")  same as line above
end

def self.most_popular
    self.all.max_by{|magazine| magazine.subscriptions.length}
    ##self.preload(:subscriptions).max_by {|magazine| magazine.subscriptions.length}  --> this prevents an n+1 query, or going into the database n+1 times
end


end