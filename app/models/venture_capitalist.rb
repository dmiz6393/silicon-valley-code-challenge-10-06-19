class VentureCapitalist
    attr_accessor :name, :total_worth 
   
    @@all=[] 
    
    def initialize(name:,total_worth:)
        @name=name
        @total_worth=total_worth 
    end 

    def self.all
        @@all
    end 

   def self.tres_commas_club 
       @@all.select {|vc| vc.total_worth>1000000000.0}
   end 
    
 #returning an empty array-come back to 

end
