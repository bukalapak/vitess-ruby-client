# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: vtrpc.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "vtrpc.CallerID" do
    optional :principal, :string, 1
    optional :component, :string, 2
    optional :subcomponent, :string, 3
  end
  add_message "vtrpc.RPCError" do
    optional :legacy_code, :enum, 1, "vtrpc.LegacyErrorCode"
    optional :message, :string, 2
    optional :code, :enum, 3, "vtrpc.Code"
  end
  add_enum "vtrpc.Code" do
    value :OK, 0
    value :CANCELED, 1
    value :UNKNOWN, 2
    value :INVALID_ARGUMENT, 3
    value :DEADLINE_EXCEEDED, 4
    value :NOT_FOUND, 5
    value :ALREADY_EXISTS, 6
    value :PERMISSION_DENIED, 7
    value :UNAUTHENTICATED, 16
    value :RESOURCE_EXHAUSTED, 8
    value :FAILED_PRECONDITION, 9
    value :ABORTED, 10
    value :OUT_OF_RANGE, 11
    value :UNIMPLEMENTED, 12
    value :INTERNAL, 13
    value :UNAVAILABLE, 14
    value :DATA_LOSS, 15
  end
  add_enum "vtrpc.LegacyErrorCode" do
    value :SUCCESS_LEGACY, 0
    value :CANCELLED_LEGACY, 1
    value :UNKNOWN_ERROR_LEGACY, 2
    value :BAD_INPUT_LEGACY, 3
    value :DEADLINE_EXCEEDED_LEGACY, 4
    value :INTEGRITY_ERROR_LEGACY, 5
    value :PERMISSION_DENIED_LEGACY, 6
    value :RESOURCE_EXHAUSTED_LEGACY, 7
    value :QUERY_NOT_SERVED_LEGACY, 8
    value :NOT_IN_TX_LEGACY, 9
    value :INTERNAL_ERROR_LEGACY, 10
    value :TRANSIENT_ERROR_LEGACY, 11
    value :UNAUTHENTICATED_LEGACY, 12
  end
end

module Vtrpc
  CallerID = Google::Protobuf::DescriptorPool.generated_pool.lookup("vtrpc.CallerID").msgclass
  RPCError = Google::Protobuf::DescriptorPool.generated_pool.lookup("vtrpc.RPCError").msgclass
  Code = Google::Protobuf::DescriptorPool.generated_pool.lookup("vtrpc.Code").enummodule
  LegacyErrorCode = Google::Protobuf::DescriptorPool.generated_pool.lookup("vtrpc.LegacyErrorCode").enummodule
end
