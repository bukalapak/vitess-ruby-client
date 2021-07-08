# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: vttest.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "vttest.Shard" do
    optional :name, :string, 1
    optional :db_name_override, :string, 2
  end
  add_message "vttest.Keyspace" do
    optional :name, :string, 1
    repeated :shards, :message, 2, "vttest.Shard"
    optional :sharding_column_name, :string, 3
    optional :sharding_column_type, :string, 4
    optional :served_from, :string, 5
    optional :replica_count, :int32, 6
    optional :rdonly_count, :int32, 7
  end
  add_message "vttest.VTTestTopology" do
    repeated :keyspaces, :message, 1, "vttest.Keyspace"
    repeated :cells, :string, 2
  end
end

module Vttest
  Shard = Google::Protobuf::DescriptorPool.generated_pool.lookup("vttest.Shard").msgclass
  Keyspace = Google::Protobuf::DescriptorPool.generated_pool.lookup("vttest.Keyspace").msgclass
  VTTestTopology = Google::Protobuf::DescriptorPool.generated_pool.lookup("vttest.VTTestTopology").msgclass
end