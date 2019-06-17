# PHASE 2
class CoffeeError < StandardError
end

class NotFruitError < StandardError
end

class FalseFriendError < StandardError
end 

class NoName < StandardError
end 

class NoHobby < StandardError
end 

def convert_to_int(str)
  begin
    #raise ArgumentError if str == "custom"
    Integer(str) 
  rescue ArgumentError
  puts "please enter a string variable"
    
  ensure
    nil
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
  
  puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
  
      if maybe_fruit == "coffee"
        raise CoffeeError 
      else
        raise NotFruitError
      end
  end 
end

def feed_me_a_fruit
  #begin
  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue CoffeeError
    puts "please try again, thanks for the coffee"
    retry
  rescue NotFruitError
    puts "No thanks, goodbye"
  #end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise FalseFriendError if yrs_known < 5
    raise NoName if name.length < 1
    raise NoHobby if fav_pastime.length < 1
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


