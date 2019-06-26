# your code goes here

require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account #bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene=(hygiene)
        #binding.pry
        if hygiene >= 10 
            @hygiene = 10
            #binding.pry
        elsif hygiene < 0 
            @hygiene = 0
        else
            @hygiene = hygiene      
        end
    end

    def happiness=(happiness)
        if happiness >= 10 
            @happiness = 10
            #binding.pry
        elsif happiness < 0 
            @happiness = 0
        else
            @happiness = happiness       
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
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
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        new_hygiene = @hygiene + 4
        self.hygiene= (new_hygiene)

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out()
        new_happiness = @happiness + 2
        self.happiness= (new_happiness)
        new_hygiene = @hygiene - 3
        self.hygiene = (new_hygiene)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        new_happiness = @happiness + 3
        #binding.pry
        self.happiness=(new_happiness)
        #binding.pry
        friend.happiness= (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            new_happiness = @happiness - 2
            self.happiness= (new_happiness)
            person.happiness=(person.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            new_happiness = @happiness + 1
            self.happiness= (new_happiness)
            person.happiness= (person.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
#
end



#, )