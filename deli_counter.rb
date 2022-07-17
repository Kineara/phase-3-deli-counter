katz_deli = []

def line(queue)
  if queue.length > 0
    # puts "The line is currently: " + queue.each_with_index { |name, index| "#{index}. #{name}" }.join(" ")
    line_announce = 'The line is currently:'
    in_line = queue.map.with_index { |name, index| "#{index + 1}. #{name}" }.join(' ')
    puts "#{line_announce} #{in_line}"
  else
    puts 'The line is currently empty.'
  end
end

def take_a_number(katz_deli, name)
  new_queue = katz_deli << name
  puts "Welcome, #{name}. You are number #{new_queue.length} in line."
  new_queue
end

def now_serving(katz_deli)
  if katz_deli.length > 0
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  else
    puts 'There is nobody waiting to be served!'
  end
end
