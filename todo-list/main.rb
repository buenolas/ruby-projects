require_relative 'task_manager'

task_manager = TaskManager.new

loop do
    puts "\nChoose a option:
    1. Add a task
    2. List tasks
    3. Check a task as done
    4. Delete a task
    5. Filter tasks
    6. Exit"
    
    choice = gets.chomp.to_i

    case choice
    when 1
        print "Task description: "
        description = gets.chomp
        print "Expiration date: "
        due_date = gets.chomp
        due_date = nil if due_date.empty?

        task_manager.add_task(description, due_date)
        puts "Task added!"
    when 2
        task_manager.list_task
    when 3
        task_manager.list_task
        print "Type the task's number to be marked as done: "
        index = gets.chomp.to_i - 1
        task_manager.check_task(index)
    when 4
        task_manager.list_task
        print "Type the task's number to be deleted: "
        index = gets.chomp.to_i - 1
        task_manager.delete_task(index)
    when 5
        print "Filter by (1: done, 2: to do): "
            status = gets.chomp.to_i == 1 ? :completed : :pending
            task_manager.filter_tasks(status)
    when 6
        break
    else
        puts "Invalid data entry! Try again."
    end
end