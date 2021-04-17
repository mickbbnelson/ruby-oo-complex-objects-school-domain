
require "pry"

# code here!
class School
    attr_accessor :roster, :name_of_school
    
    def initialize(name_of_school)
        @name_of_school = name_of_school
        @roster = {}
    end

    def add_student(name_value, grade_key)
        @roster[grade_key] ||= []      #if @roster grade_key exists, keep and use the grade_key.  If not, set a new hash up with that garde_key
        @roster[grade_key] << name_value  #Shovel in the name_vale into the hash value which is an array
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


