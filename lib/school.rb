require 'pry'
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade) 
        if @roster.has_key?(grade) == true
            @roster[grade] << "#{name}"
        else 
            @roster[grade] = [] 
            @roster[grade] << "#{name}" #create a key
        end
        @roster
    end    #sort by grade and name

    def grade(year)
        @roster[year] #returns all values from that key
    end

    def sort
        # binding.pry
        @roster.each do |key, value| #takes roster [:grade=>student]
          @roster[key] = value.sort   #return [values in an array] from each key 
    end
end
end