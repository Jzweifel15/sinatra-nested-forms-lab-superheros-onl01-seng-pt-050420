class Team 
  
  attr_accessor :name, :motto
  
  @@all = []
  
  def initialze(params)
    @name = params[:name]
    @motto = params[:motto]
    @@all.push(self)
  end
  
  def self.all
    @@all
  end
  
end