
$arr=[]
def add(id,name,mark)
  student={}
  student[:id]=id
  student[:name]=name
  student[:mark]=mark
  $arr.push(student)
end
def check_pass(student,mark)
  student[:mark]>mark
end
def get_grade(student)
  case student[:mark]
  when 0..32
     "You fail!"

  when 33..40
     "You got C grade!"

  when 41..60
    "You got B grade!"

  else
     "You got A grade!"

  end

end
add(1,"Divya",95)
add(2, "Jay",40)
puts $arr
passing_mark=30
$arr.each {|stud|
  #puts  check_pass(stud,passing_mark)? "#{stud[:name]} Passed" : "#{stud[:name]} Failed"
  puts get_grade(stud)
}

