

class User
  attr_accessor :email, :encrypted_password
  @@user_count = 0

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end

  def change_password(new_password)
    @encrypted_password = encrypt(new_password)
  end

  def show_itself
    puts self
  end

  def self.count
    return @@user_count
  end

  private

  def encrypt(string_to_encrypt)
    return "##ENCRYPTED##"
  end

end

puts "end of file"

=begin
class User
  def truc_public
    # on peut faire julie.truc_public
  end

  private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas donc !

  def truc_private
    # impossible de faire julie.truc_private
  end

end


class User
  attr_accessor :email #on définit une variable d'instance lisible et modifiable

  def initialize(email_to_save) #on définit un initialize
    if check_email(email_to_save) # on vérifie l’e-mail proposé
      @email = email_to_save #l’e-mail est ok => on le sauve dans l'instance
    else
      puts "ERREUR ! EMAIL FOIREUX. Retry" #l’e-mail est non ok => message d'erreur
    end
  end

  def check_email(email_to_save)

  end

end

class User
  attr_accessor :email
  @@user_count = 0  
  	#User.count #=> 0
  def initialize(email_to_save) 
    @email = email_to_save #julie = User.new("julie@julie.com")
    @@user_count = @@user_count + 1 #User.count #=> 1
  end

  def self.count #jean = User.new("jean@jean.com")
  	return @@user_count #User.count => 2
  end
end

binding.pry
puts "end of file"


class User
  attr_accessor :email

  def initialize(email_to_save) #julie = User.new("julie@julie.com") #dès le départ, tu rattaches un email à l'instance et affiche un message
    @email = email_to_save #puts julie.email => "julie@julie.com"
    puts "Email : Bienvenue !!"
  end #jean = User.new #tu vas avoir une erreur car tu as oublié l'email => ArgumentError (wrong number of arguments (given 0, expected 1))
end

binding.pry
puts "end of file"



class User #julie = User.new
	attr_accessor :email #julie.email = "julie@julie.com"
end #puts julie.email #=> "julie@julie.com"

binding.pry 
puts "end of file"


class User
	attr_reader :birthdate

	def update_birthdate(birthdate_to_update)
		@birthdate = birthdate_to_update
	end
end 

binding.pry 
puts "end of file"


class User #julie = User.new
  attr_writer :mastercard #julie.mastercard = "4567546577"
     #julie.mastercard => on ne peut y accéder
  def read_mastercard
    return @mastercard #julie.read_mastercard    =>   "4567546577"
  end
end

binding.pry
puts "end of file"


class User

	def update_email(email_to_update)
		@email = email_to_update
	end

	def read_email
		return @email 
	end

end

binding.pry 
puts "end of file"



class User
	def show_itself
		print "Voici l'instance : "
		puts self
	end

end

binding.pry 
puts "end of file"

=begin
class User
	def greet
		puts "Bonjour, monde !"
	end
	def say_hello_to_someone(first_name)
		puts "Bonjour, #{first_name} !"
	end
end #fin de ma classe

binding.pry 
puts "end of file"
=end
