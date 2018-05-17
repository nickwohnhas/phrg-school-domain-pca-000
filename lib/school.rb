require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}

  end
  attr_accessor :name
  def roster=(roster)
    @roster = roster

  end
  def roster
    @roster
  end
  def add_student(student_name,grade)
    if @roster[grade] === nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
    @roster[grade] << student_name
   end
 end
  def grade(grade_number)
    @roster[grade_number]
  end
  def sort
    @roster.each do |key,value|
      value.sort!


    end
  end
end
