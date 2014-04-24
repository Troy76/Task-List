task_list = Hash.new

puts "What do you want to put on your task list?"
task = gets.chomp
while task != "exit"
  if task_list.has_key?(task)
    puts "You already have that task"
  else
    task_list[task] = 1
  end
  puts "Do you want to add anything else on your task list. Type exit to find out what is on your list."
  task = gets.chomp
end
task_list.each do |task, number|
  puts "-You must #{task}"
end