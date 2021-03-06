require 'pry'
# your code goes here
class Person

    attr_accessor :bank_account, :happiness, :hygiene
    
    # def name=(name)
    #     @name = name
    # end
    attr_reader :name



    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(num)
        @happiness = num
        if @happiness >= 10
            @happiness = 10
        elsif @happiness <= 0
            @happiness = 0
        end
    end

    def hygiene=(num)
        @hygiene = num
        if @hygiene >= 10
            @hygiene = 10
        elsif @hygiene <= 0
            @hygiene = 0
        end
    end

    def bank_account=(num)
        @bank_account = num
    end

    def happy?
         @happiness > 7 
    end

    def clean?
        @hygiene > 7 
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        bath = @hygiene += 4
        self.hygiene=(bath)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        work = @happiness += 2
        dirty = @hygiene -= 3
        self.happiness=(work)
        self.hygiene=(dirty)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3 
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"  
        end

    end
    
end 






