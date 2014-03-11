require './lib/to_do'

@list = []
@done = []

def main_menu
  puts "Press 'a' to add a task or 'l' to list all of your tasks."
  puts "Press 'd' to mark a task as done and remove it from the list."
  puts "Press 'x' to exit."
  main_choice = gets.chomp
  if main_choice == 'a'
    add_task
  elsif main_choice == 'l'
    list_tasks
  elsif main_choice == 'd'
    removed_tasks
  elsif main_choice == 'x'
    puts "Good Bye!"
  else
    puts "Sorry, that wasn't a valid option."
    main_menu
  end
end

def add_task
  puts "Enter a description of the new task:"
  description = gets.chomp
  @list << Task.new(description)
  puts "Task added.\n\n"
  main_menu
end

def list_tasks
  puts "Here are all of your tasks:"
  @list.each do |task|
    puts task.description
  end
  puts "\n"
  main_menu
end


def removed_tasks
  puts "Choose task to be removed, by entering it's corresponding number."
  done_task = list.index +1
  gets.chomp
  finished_task = @list.find { |task| list.delete }
  @done << finished_task
  puts "Task done!"
  puts "\n"
  main_menu
end


main_menu
