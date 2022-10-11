# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them

As a user
So I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

Nouns and verbs from user stories 

Add task
View tasks
Mark complete
 
```
┌────────────────────────────┐
│ Todo List          │
│                            │
│ - add(task)               │
│ - view all tasks                      │
│ - view completed           │
└───────────┬────────────────┘
            │
            │ 
            ▼
┌─────────────────────────┐
│ Todo task    │
│                         │
│ - complete?               │
│ - mark task to complete                │
│ - title of task
└─────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class TaskList
  def add(task) # task is an instance of Task  
    # ...
  end

  def all 
	returns a list of Task instances but only completed ones
  end
    
 def complete
 # returns list of completed task instances
 end
end

class Task
    def initialize(title)  # add task title
    end

    def title # returns title as a string
    end

    def mark_complete #mark task complete
    end

    def complete? #returns true if marked complete otherwise false
    end
end


  
 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
EXAMPLE
`
1. # Tasklist adding

 task_list = Tasklist.new
 task_1 = Task.new("Walk the cat")
 task_2 = Task.new("Walk the dog")
 task_list.add(task_1)
 task_list.add(task_2)
 task_list.all # tasks 1 and 2 
 
 
2 # Tasklist completing

 task_list = Tasklist.new
 task_1 = Task.new("Walk the cat")
 task_2 = Task.new("Walk the dog")
 task_list.add(task_1)
 task_list.add(task_2)
 task_2.mark_complete
 task_list.all # task 1 only 


3 # Tasklist completing

 task_list = Tasklist.new
 task_1 = Task.new("Walk the cat")
 task_2 = Task.new("Walk the dog")
 task_list.add(task_1)
 task_list.add(task_2)
 task_list.completed # task  2 

```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby

TaskList #class

1. # Tasklist 

task_list = TaskList.new
task_list.all  # list all tasks

 
 
2 # Tasklist completing

task_list = TaskList.new
task_list.complete  # list all complete tasks 

Task  #class

1 # New task

task = Task.new("Walk the dog")
task.title # = "Walk the dog"   

2

task = Task.new("Walk the dog")
task.complete?  # = false   

3

task = Task.new("Walk the dog")
task.mark_complete     
task.mark_complete?  # = true   


 
 

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._

Require

