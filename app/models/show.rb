class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :shows 
  belongs_to :network 

  def actors_list
    self.characters.map do |c|
        c.actor.full_name 
    end
  end
end