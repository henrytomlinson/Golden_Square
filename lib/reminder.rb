class Reminder
    def initialize(name)
      @name = name
    end
  
    def remind_me_to(task)
      @task = task
    end
  
    def remind()
      #look here fail if no reminder set
      fail "No reminder set!" if @task.nil?
      return "#{@task}, #{@name}!"
    end
  end

  #p reminder=Reminder.new("henry")
  #p reminder.remind_me_to("walk dog")
  #puts reminder.remind()