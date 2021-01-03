# To-do apps using Ruby on Rails

This project creates a To-do app using `Ruby on Rails` framework. This app contains the following features:
1. User should be able to create a todo
    A Todo contains
    - description
    - end-time
    - reminder (true/false) - if true a system generated mail would be triggered to the user (10 mins prior to the end time) (right now the email is delivered at the time when the to-do is created).
2. User can view all the previous todo lists
3. User can filter the todo list depending on the status whether it's completed or pending (by default all the todo's listed would be in the pending state)
4. User can edit/delete the existing todo

> This project is created as a learning exercise on `Ruby on Rails` framework.


## How to run the app

Make sure you have Ruby and Rails installed on your system. For assistance, refer [this](https://gorails.com/setup/osx/10.15-catalina)

1. Clone the above repository in your local machine.
2. Open the directory 'To-do-app-using-Rails-master'.
3. Open your terminal(command prompt) in this directory, or navigate the terminal(command prompt) to point to this directory.
4. Run `rails s`, a shorthand for `rails server`.
5. Type `localhost:3000` in the browser after you see the following lines: 
    ```sh
    * Listening on http://[::1]:3000
    * Listening on http://127.0.0.1:3000
    ```

You must be at the Home page of the app now.
