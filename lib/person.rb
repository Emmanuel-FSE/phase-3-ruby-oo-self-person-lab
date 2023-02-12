class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene

    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end

    def happiness=(value)
        @happiness = value
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end
    
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end

end
