module Contactable
    def contact_details(num)
        if num == "*"
            File.open('user.txt','r')do |f|
                while line=f.gets
                    puts line
                end
            end
        else 
            File.open('user.txt','r')do |f|
                count=0
                while count<num.to_i do
                    puts line=f.gets
                    count+=1
                end
            end
        end
    end
end

