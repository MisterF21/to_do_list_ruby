require 'rspec'
require 'to_do'

describe Task do
  it 'is initialized with a description' do
    test_task = Task.new('blahblahblah')
    test_task.should be_an_instance_of Task
  end

  it 'lets you read a description for a task' do
    test_task = Task.new('blahblahblah')
    test_task.description.should eq 'blahblahblah'
  end

  it 'lets you know if a task is completed' do
    test_task = Task.new('blahblahblah')
    test_task.completed.should eq true
  end
end
