class SuperHero
  
  attr_accessor :name, :power, :bio 
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all.push(self)
  end 
  
  def self.all
    @@all
  end  
  
end