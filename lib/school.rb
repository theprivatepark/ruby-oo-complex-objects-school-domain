require 'pry'
class School

attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name,grade)
        if @roster.has_key?(grade) == false
            @roster[grade] = []
        end
            @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort
        end
    end
end