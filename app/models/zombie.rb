class Zombie < ActiveRecord::Base
  attr_accessible :age, :bio, :name, :rotting

  #Destroy dependant brain - not working !!
  has_one :brain, dependent: :destroy

  before_save :set_rotting

  scope :old, where("age > 10")


  def set_rotting

   # self.rotting = true if age > 50

    if age > 50
      self.rotting = true
    end

    #Wgy oh why does this not work - DAMN RUBY!!!
    # if age > 50
    #   self.rotting = true
    # else
    #   self.rotting = false
    # end
    #self.rotting
     #age > 50 ? self.rotting = true : self.rotting = false
    #var == 10 ? “10″ : “Not 10″
  end



end
