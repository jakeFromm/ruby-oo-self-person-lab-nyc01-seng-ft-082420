# your code goes here
require "pry"

class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    
    end

    def name
        @name
    end
    
    def happiness=(num)
        @happiness = num
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def hygiene=(num)
        @hygiene = num
        if num > 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        end

    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
    
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += hygiene=(4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene += hygiene=(-3)
        self.happiness += happiness=(2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend = self.new)
        self.happiness += happiness=(3)
        friend.happiness += happiness=(3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(convo_partner = self.new, topic)
        if topic == "politics"
            self.happiness += happiness=(-2)
            convo_partner.happiness += happiness=(-2)
            "blah blah partisan blah lobbyist" 
        elsif topic == "weather"
            self.happiness += happiness=(1)
            convo_partner.happiness += happiness=(1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"    
        end
    end



end    