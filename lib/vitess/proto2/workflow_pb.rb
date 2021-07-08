# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: workflow.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "workflow.Workflow" do
    optional :uuid, :string, 1
    optional :factory_name, :string, 2
    optional :name, :string, 3
    optional :state, :enum, 4, "workflow.WorkflowState"
    optional :data, :bytes, 5
    optional :error, :string, 6
    optional :start_time, :int64, 7
    optional :end_time, :int64, 8
    optional :create_time, :int64, 9
  end
  add_message "workflow.WorkflowCheckpoint" do
    optional :code_version, :int32, 1
    map :tasks, :string, :message, 2, "workflow.Task"
    map :settings, :string, :string, 3
  end
  add_message "workflow.Task" do
    optional :id, :string, 1
    optional :state, :enum, 2, "workflow.TaskState"
    map :attributes, :string, :string, 3
    optional :error, :string, 4
  end
  add_enum "workflow.WorkflowState" do
    value :NotStarted, 0
    value :Running, 1
    value :Done, 2
  end
  add_enum "workflow.TaskState" do
    value :TaskNotStarted, 0
    value :TaskRunning, 1
    value :TaskDone, 2
  end
end

module Workflow
  Workflow = Google::Protobuf::DescriptorPool.generated_pool.lookup("workflow.Workflow").msgclass
  WorkflowCheckpoint = Google::Protobuf::DescriptorPool.generated_pool.lookup("workflow.WorkflowCheckpoint").msgclass
  Task = Google::Protobuf::DescriptorPool.generated_pool.lookup("workflow.Task").msgclass
  WorkflowState = Google::Protobuf::DescriptorPool.generated_pool.lookup("workflow.WorkflowState").enummodule
  TaskState = Google::Protobuf::DescriptorPool.generated_pool.lookup("workflow.TaskState").enummodule
end