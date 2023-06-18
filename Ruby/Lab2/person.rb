class Person
    attr_accessor :name
    @name
    def initialize(name)
        @name=name
    end
    #function to validate name
    def valid_name(name)
        if name.match(/\A[[:alpha:]]+\z/)
            return true
        else
            return false
        end
    end
end
# s=Person.new("alaanassar")
# puts s.name
# puts s.valid_name(s.name)
