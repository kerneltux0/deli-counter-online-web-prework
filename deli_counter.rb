
def line(katz_deli)
  current_line=[]
  if katz_deli.size > 0
    katz_deli.each_with_index do |person,index|
      current_line.push("#{index+1}. #{person}")
    end
    current_line_str=current_line.join(" ")
    puts "The line is currently: #{current_line_str}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(katz_deli)
  ticket_num = katz_deli.length+1
  katz_deli.push(ticket_num)
  puts "Welcome, your ticket number is #{ticket_num}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
  if katz_deli.size>0
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  else
    puts "There is nobody waiting to be served!"
  end
end
katz_deli = []
take_a_number(katz_deli)
take_a_number(katz_deli)
now_serving(katz_deli)
take_a_number(katz_deli)