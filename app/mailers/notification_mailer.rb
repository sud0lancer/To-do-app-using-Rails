class NotificationMailer < ApplicationMailer
    default from: 'sudhanshu07427@gmail.com'

    def notify_mail(todo)
        @todo = todo
        @url = 'http://www.gmail.com'
        mail(to: @todo.email, subject: 'Notification regarding To-do list item.')
    end
end