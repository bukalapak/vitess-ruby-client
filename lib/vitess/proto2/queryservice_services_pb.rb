# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: queryservice.proto for package 'queryservice'
# Original file comments:
#
# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreedto in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# This file contains the service VtTablet exposes for queries.
#

require 'grpc'
require 'queryservice_pb'

module Queryservice
  module Query
    # Query defines the tablet query service, implemented by vttablet.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'queryservice.Query'

      # Execute executes the specified SQL query (might be in a
      # transaction context, if Query.transaction_id is set).
      rpc :Execute, Query::ExecuteRequest, Query::ExecuteResponse
      # ExecuteBatch executes a list of queries, and returns the result
      # for each query.
      rpc :ExecuteBatch, Query::ExecuteBatchRequest, Query::ExecuteBatchResponse
      # StreamExecute executes a streaming query. Use this method if the
      # query returns a large number of rows. The first QueryResult will
      # contain the Fields, subsequent QueryResult messages will contain
      # the rows.
      rpc :StreamExecute, Query::StreamExecuteRequest, stream(Query::StreamExecuteResponse)
      # Begin a transaction.
      rpc :Begin, Query::BeginRequest, Query::BeginResponse
      # Commit a transaction.
      rpc :Commit, Query::CommitRequest, Query::CommitResponse
      # Rollback a transaction.
      rpc :Rollback, Query::RollbackRequest, Query::RollbackResponse
      # Prepare preares a transaction.
      rpc :Prepare, Query::PrepareRequest, Query::PrepareResponse
      # CommitPrepared commits a prepared transaction.
      rpc :CommitPrepared, Query::CommitPreparedRequest, Query::CommitPreparedResponse
      # RollbackPrepared rolls back a prepared transaction.
      rpc :RollbackPrepared, Query::RollbackPreparedRequest, Query::RollbackPreparedResponse
      # CreateTransaction creates the metadata for a 2pc transaction.
      rpc :CreateTransaction, Query::CreateTransactionRequest, Query::CreateTransactionResponse
      # StartCommit initiates a commit for a 2pc transaction.
      rpc :StartCommit, Query::StartCommitRequest, Query::StartCommitResponse
      # SetRollback marks the 2pc transaction for rollback.
      rpc :SetRollback, Query::SetRollbackRequest, Query::SetRollbackResponse
      # ConcludeTransaction marks the 2pc transaction as resolved.
      rpc :ConcludeTransaction, Query::ConcludeTransactionRequest, Query::ConcludeTransactionResponse
      # ReadTransaction returns the 2pc transaction info.
      rpc :ReadTransaction, Query::ReadTransactionRequest, Query::ReadTransactionResponse
      # BeginExecute executes a begin and the specified SQL query.
      rpc :BeginExecute, Query::BeginExecuteRequest, Query::BeginExecuteResponse
      # BeginExecuteBatch executes a begin and a list of queries.
      rpc :BeginExecuteBatch, Query::BeginExecuteBatchRequest, Query::BeginExecuteBatchResponse
      # MessageStream streams messages from a message table.
      rpc :MessageStream, Query::MessageStreamRequest, stream(Query::MessageStreamResponse)
      # MessageAck acks messages for a table.
      rpc :MessageAck, Query::MessageAckRequest, Query::MessageAckResponse
      # SplitQuery is the API to facilitate MapReduce-type iterations
      # over large data sets (like full table dumps).
      rpc :SplitQuery, Query::SplitQueryRequest, Query::SplitQueryResponse
      # StreamHealth runs a streaming RPC to the tablet, that returns the
      # current health of the tablet on a regular basis.
      rpc :StreamHealth, Query::StreamHealthRequest, stream(Query::StreamHealthResponse)
      # UpdateStream asks the server to return a stream of the updates that have been applied to its database.
      rpc :UpdateStream, Query::UpdateStreamRequest, stream(Query::UpdateStreamResponse)
    end

    Stub = Service.rpc_stub_class
  end
end
