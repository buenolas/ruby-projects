---

# To-do list

To-do list is a powerful, Ruby-based command-line application designed to help you efficiently manage your daily tasks. With its robust features, this tool enables you to add, list, filter, delete, and mark tasks as completed, ensuring that you stay organized and on top of your responsibilities.

## Features

- **Add Tasks**: Quickly add new tasks to your to-do list with ease.
- **List Tasks**: Display all your tasks in a clear and organized list format.
- **Filter Tasks**: Filter your tasks based on completion status, helping you focus on what's left to do.
- **Complete Tasks**: Mark tasks as completed, keeping your list up-to-date.
- **Delete Tasks**: Remove tasks from your list once they are no longer needed.
- **Persistent Data Storage**: All tasks are saved in a JSON file, ensuring that your data is preserved even after the application is closed and reopened.

### Persistent Storage with JSON

One of the key features of this application is its ability to save your tasks in a JSON file (`tasks.json`). This means that every task you add, complete, or delete is saved persistently. You can close the application at any time, and when you return, your tasks will be exactly as you left them.

## Getting Started

### Prerequisites

To run this application, you need to have Ruby installed on your system. You can check if Ruby is installed by running the following command:

```sh
ruby -v
```

If Ruby is not installed, you can download it from [Ruby's official website](https://www.ruby-lang.org/en/downloads/).

### Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/yourusername/task_manager.git
   ```

2. Navigate to the project directory:

   ```sh
   cd task_manager
   ```

3. Run the application:

   ```sh
   ruby main.rb
   ```

### Usage

Once the application is running, you can use the following commands:

- **Add a Task**: Follow the on-screen prompts to add a new task.
- **List All Tasks**: View all tasks, including completed and incomplete ones.
- **Filter Tasks**: Filter tasks to show only completed or incomplete tasks.
- **Complete a Task**: Select and mark a task as complete.
- **Delete a Task**: Remove a task from the list entirely.

### Project Structure

- **main.rb**: The entry point of the application, where the main logic and user interaction occur.
- **task_manager.rb**: Handles the task management logic, including adding, listing, filtering, completing, deleting tasks, and managing the JSON data storage.

### Future Improvements

- Implement task categories for better task organization.
- Enhance the user interface for a more interactive experience.

## Contributing

Contributions are welcome! If you'd like to contribute to the project, please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

---
