require 'json'

class TaskManager
    def initialize(file_path = "tasks.json")
        @file_path = file_path
        @tasks = load_tasks
    end

    def add_task(description, due_date = nil) 
        task = {description: description, due_date: due_date, completed: false}
        @tasks << task
        save_tasks
    end  

    def list_task
        @tasks.each_with_index do |task, index|
            status = task[:completed] ? ['X'] : [ ]
            due_date = task[:due_date] ? " - Due: #{task[:due_date]}" : ""
            puts "#{index + 1}. #{status} #{task[:description]}#{due_date}" 
        end
    end

    def check_task(index)
        if @tasks[index]
            @tasks[index][:completed] = true 
            save_tasks
            puts "Task marked as done!"
        else
            puts "Task not found!"
        end
    end

    def delete_task(index)
        if @tasks[index]
            @tasks.delete_at(index)
            save_tasks 
            puts "Task deleted!"
        else
            puts "Task not found!"
        end
    end

    def filter_tasks(status)
        filtered_tasks = @tasks.select { |task| task[:completed] == (status == :completed) }
        filtered_tasks.each_with_index do |task, index|
            due_date = task[:due_date] ? " - Due: #{task[:due_date]}" : ""
            puts "#{index + 1}. #{task[:description]}#{due_date}"
        end
    end

    private

    def save_tasks
        File.open(@file_path, "w") do |file|
            file.write(JSON.pretty_generate(@tasks))
        end
    end

    def load_tasks
        if File.exist?(@file_path)
            JSON.parse(File.read(@file_path), symbolize_names: true)
        else
            []
        end
    end
end
