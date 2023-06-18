require "./user.rb"
#check if user data correct or not
def check_user(name,email,mobile)
    s=User.new(name,email,mobile)
    if s.valid_name(name) and User.valid_mobile(mobile) and User.valid_email(email)
        puts "Welcome #{name}"
        s.create
        return true
    end
    if s.valid_name(name) ==false
            puts "Sorry invalid name"
    end
    if User.valid_email(email) == false
            puts "Sorry invalid email"
    end
    if User.valid_mobile(mobile) == false
            puts "Sorry invalid phone number"
    end
end

# register form
while true
    puts "="*50
    puts "Welcome to Contract ruby register form"
    puts "-"*38
    puts "enter your name"
    puts "-"*15
    name=gets.chomp
    puts "enter your email"
    puts "-"*18
    email=gets.chomp
    puts "enter your phone number"
    puts "-"*25
    mobile=gets.chomp
    if(check_user(name,email,mobile))
        puts "Enter (*) to list all registered users or the number of users you would like to list:"
        puts "-"*77
        choice=gets.chomp
        User.list(choice)
        break
    end
end



