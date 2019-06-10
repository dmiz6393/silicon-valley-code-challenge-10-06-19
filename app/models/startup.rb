class Startup
    attr_accessor :name 
    attr_reader :domain, :founder

    @@all=[]

    def initialize(name:,founder:,domain:)
        @name=name
        @founder=founder
        @domain=domain 
        @@all<<self 
    end 

    def self.all
        @@all
    end 

    # def pivot(domain,name) 
    # end 
    #     #s1.pivot=("new name:" "new domain:")

    def self.find_by_founder(founders_name)
        founder=@@all.select {|startups| startups.founder==founders_name}
        founder.first 
    end 

    def self.domains 
        @@all.map {|startups| startups.domain}
    end 

    def num_funding_rounds
       rounds= FundingRound.all.select {|rounds| self == rounds.startup}
       rounds.size 
    end 

    # def total_funds 
    # rounds= FundingRound.all.select {|rounds| self == rounds.startup}
    # end 
end
