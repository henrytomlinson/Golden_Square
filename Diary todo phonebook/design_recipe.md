# {{PROBLEM}} Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries
As a user


So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary


As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_


_Also design the interface of each class in more detail._

```ruby



class Diary
  def add(entry) #instance of DiaryEntry
  end

  def entries #this will return list of the diary entries

  end

class DiaryEntry
  def initialize (title, contents)
  end

  def title
  #returns title as a string
  end

  def contents
  #return contents as a string
  end
end

class DiaryReader
  def initialize(wpm, diary) #wpm is how many words the reader can read in a minute. 
  # Diary is an instance of diary

  def most_readable_in_given_time(time) #based on wpm will find longest entry that can be read in the given time
  end
end


class PhoneNumberExtract
  def initialize(diary)
  end

  def extract numbers #returns a list of phone numbers from the diary entries
  end
end



class TaskList
  def add(task) # task is an instance of Task  
    
  end

  def all 
	 # returns a list of Tasks 
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
end


  
 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
EXAMPLE
`
As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries
As a user

1. # Diary entry

 diary = Diary.new
 entry_1 = DiaryEntry.new("title 1", "contents 1")
 entry_2 = DiaryEntry.new("title 2", "contents 2")
 diary.add(entry_1)
 diary.add(entry_2)
 expect(diary.entries). to eq [entry_1, entry_2]
 end 
 

2.  #longest readable entry based on wpm

 diary = Diary.new
 reader = DiaryReader(2, diary)
 entry_1 = DiaryEntry.new("title 1", "one")
 entry_2 = DiaryEntry.new("title 2", "one two")
 entry_3 = DiaryEntry.new("title 3", "one two three")
 entry_4 = DiaryEntry.new("title 4", "one two three four")
 diary.add(entry_1)
 diary.add(entry_2)
 diary.add(entry_3)
 diary.add(entry_4)
 expect(reader.most_readable_in_given_time(2)). to eq [entry_4]
 end 
 
3.  #not exact fit 

 diary = Diary.new
 reader = DiaryReader(2, diary)
 entry_1 = DiaryEntry.new("title 1", "one")
 entry_2 = DiaryEntry.new("title 2", "one two")
 entry_3 = DiaryEntry.new("title 3", "one two three")
 entry_4 = DiaryEntry.new("title 4", "one two three four")
 entry_5 = DiaryEntry.new("title 4", "one two three four five")
 diary.add(entry_1)
 diary.add(entry_2)
 diary.add(entry_3)
 diary.add(entry_4)
 diary.add(entry_5)
 expect(reader.most_readable_in_given_time(2)). to eq [entry_3]
 end 

4.    #nil readable

 diary = Diary.new
 reader = DiaryReader.new(2, diary)
 entry_1 = DiaryEntry.new("title 1", "one")
 diary.add(entry_1)
 expect(reader.most_readable_in_given_time(2)). to eq nil
 end 


4 Invalid wpm

diary = Diary.new
DiaryReader.new(0, diary) #wpm set to 0 so should fail

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

# Tasklist completing

 task_list = Tasklist.new
 task_1 = Task.new("Walk the cat")
 task_2 = Task.new("Walk the dog")
 task_list.add(task_1)
 task_list.add(task_2)
 expect(task_list).to eq [task_1, task_2] 


As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

diary = Diary.new
phone_book = PhoneNumberExtract.new
diary.add("title 1", "one 01253123456")
diary.add("title 2", "one 01253123457")
expect(phone_book.extract).to eq ["01253123456", "01253123457"]






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

