
class Student
  @@arr=[]
def add(id,name,mark)
  student={}
  student[:id]=id
  student[:name]=name
  student[:mark]=mark
  @@arr.push(student)
end

  def student_list
    puts @@arr
  end

def check_pass(mark)
  @@arr.map {|student|
    puts student[:mark] >mark ? "#{student[:name]} pass!" :"#{student[:name]} fail!"
  }
end

def get_grade
  @@arr.each do|student|
  case student[:mark]
  when 0..32
    puts "#{student[:name]} fail!"

  when 33..40
    puts "#{student[:name]} got C grade!"

  when 41..60
     puts "#{student[:name]} got B grade!"

  else
    puts "#{student[:name]} got A grade!"
  end
  end
  end

 def add_percentage
   @@arr.each {|student|
  student[:percentage]=(student[:mark]*100)/100
   }
 end
end
student=Student.new
student.add(1,"Divya",95)
student.add(2, "Jay",40)
student.student_list
passing_mark=30
student.add_percentage
student.student_list
student.check_pass(passing_mark)
student.get_grade








