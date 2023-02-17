class Person
  attr_reader :name
  attr_accessor :bank_account, :hygiene, :happiness
  def initialize(name, happiness = 8)
      @name = name 
      @bank_account = 25
      @happiness = happiness
      @hygiene = 8      
  end
  def happiness
      if @happiness > 10
          10   
      elsif @happiness < 0
          0
      else
          @happiness  
      end  
  end 
  def hygiene
      if @hygiene > 10
          10   
      elsif @hygiene < 0
          0
      else
          @hygiene  
      end  
  end 
  def clean?
      self.hygiene > 7
  end 
  def happy?
      self.happiness > 7 
  end 
  def get_paid amount
      self.bank_account+=amount
      'all about the benjamins'
  end
  def take_bath
      self.hygiene+=4
      '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  def work_out
      self.happiness+=2
      self.hygiene-=3
      '♪ another one bites the dust ♫'
  end
  def call_friend friend
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  def start_conversation(friend, topic)
      @topic = topic
      case @topic
      when 'politics'
          self.happiness -= 2
          friend.happiness -= 2
          'blah blah partisan blah lobbyist'
      when 'weather'
          self.happiness += 1
          friend.happiness += 1
          'blah blah sun blah rain'
      else
          'blah blah blah blah blah'
      end
  end

end