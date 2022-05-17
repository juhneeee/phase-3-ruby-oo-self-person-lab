# your code goes here
class Person 
    attr_reader :name, :happiness,:hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = num.clamp(0,10)
    end

    def hygiene=(num)
        @hygiene = num.clamp(0,10)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amount)
        @bank_account+= amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene+= 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness+= 2
        self.hygiene-= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+= 3
        friend.happiness+= 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end
    
    def start_conversation(friend, topic)
        num= 0
        string= ""
        case topic
        when 'politics'
            num = -2
            string = 'partisan blah lobbyist'
        when 'weather'
            num = 1
            string = 'sun blah rain'
        else
            string = 'blah blah blah'
        end
        self.happiness+= num
        friend.happiness+= num
        "blah blah #{string}"
    end
end

andy = Person.new('Andy')

betty = Person.new('Betty')

p andy.happiness, betty.happiness

p andy.start_conversation(betty, 'tests')
p andy.happiness, betty.happiness
