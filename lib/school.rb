require "pry"

# code here!
class School
    attr_accessor :roster, :name_of_school
    
    def initialize(name_of_school)
        @name_of_school = name_of_school
        @roster = {}
    end

    def add_student(name_value, grade_key)
        
        @roster[grade_key] ||= []
        @roster[grade_key] << name_value
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        student_hash = {}
        @roster.each do |grade, students|
            student_hash[grade] = students.sort
        end
        student_hash
    end
end


