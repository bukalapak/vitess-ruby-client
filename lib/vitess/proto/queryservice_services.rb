# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: queryservice.proto for package 'queryservice'

require 'grpc'
require 'queryservice'

module Queryservice
  module Query

    # TODO: add proto service documentation here
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'queryservice.Query'

      rpc :GetSessionId, GetSessionIdRequest, GetSessionIdResponse
      rpc :Execute, ExecuteRequest, ExecuteResponse
      rpc :ExecuteBatch, ExecuteBatchRequest, ExecuteBatchResponse
      rpc :StreamExecute, StreamExecuteRequest, stream(StreamExecuteResponse)
      rpc :Begin, BeginRequest, BeginResponse
      rpc :Commit, CommitRequest, CommitResponse
      rpc :Rollback, RollbackRequest, RollbackResponse
      rpc :SplitQuery, SplitQueryRequest, SplitQueryResponse
      rpc :StreamHealth, StreamHealthRequest, stream(StreamHealthResponse)
    end

    Stub = Service.rpc_stub_class
  end
end
