module Test
  def result
    sum = @grade1 + @grade2
    avr = sum/2
    if avr > 4 then
      p "#{name}: Estudiante aprobado"
    else
      p "#{name}: Estudiante reprobado"
    end
  end
end

module Attendance
  def student_quantity
  p "La cantidad de alumnos en el curso es #{quantity} "
  end
end
class Student
  extend Attendance
  include Test
  @grade1 = 4
  @grade2 = 4
  @@quantity = 0
attr_accessor :name, :grade1, :grade2
  def initialize(name, grade1, grade2)
    @name = name
    @grade1 = grade1
    @grade2= grade2
    @@quantity +=1
  end
  def self.quantity
    @@quantity
  end
end

Student.new('Alexis', 7, 6).result
Student.new('Roberto', 5, 5).result
Student.new('Claudio', 2.4, 3.4).result
Student.new('Felipe', 4.5, 5.5).result
Student.new('Alejandro', 1, 3).result
Student.new('Javier', 5.4, 6.2).result
Student.new('David', 7, 6.5).result
Student.new('Sebastian', 2.5, 1.3).result
Student.new('Elias', 7, 6.5).result
Student.new('Nicolas', 7.9, 6.0).result

Student.student_quantity
