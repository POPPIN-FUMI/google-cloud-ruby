# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/v2/document.proto for package 'google.cloud.dialogflow.v2'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/v2/document_pb'

module Google
  module Cloud
    module Dialogflow
      module V2
        module Documents
          # Service for managing knowledge [Documents][google.cloud.dialogflow.v2.Document].
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.dialogflow.v2.Documents'

            # Returns the list of all documents of the knowledge base.
            rpc :ListDocuments, ::Google::Cloud::Dialogflow::V2::ListDocumentsRequest, ::Google::Cloud::Dialogflow::V2::ListDocumentsResponse
            # Retrieves the specified document.
            rpc :GetDocument, ::Google::Cloud::Dialogflow::V2::GetDocumentRequest, ::Google::Cloud::Dialogflow::V2::Document
            # Creates a new document.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2.KnowledgeOperationMetadata]
            # - `response`: [Document][google.cloud.dialogflow.v2.Document]
            rpc :CreateDocument, ::Google::Cloud::Dialogflow::V2::CreateDocumentRequest, ::Google::Longrunning::Operation
            # Deletes the specified document.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2.KnowledgeOperationMetadata]
            # - `response`: An [Empty
            #   message](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#empty)
            rpc :DeleteDocument, ::Google::Cloud::Dialogflow::V2::DeleteDocumentRequest, ::Google::Longrunning::Operation
            # Updates the specified document.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2.KnowledgeOperationMetadata]
            # - `response`: [Document][google.cloud.dialogflow.v2.Document]
            rpc :UpdateDocument, ::Google::Cloud::Dialogflow::V2::UpdateDocumentRequest, ::Google::Longrunning::Operation
            # Reloads the specified document from its specified source, content_uri or
            # content. The previously loaded content of the document will be deleted.
            # Note: Even when the content of the document has not changed, there still
            # may be side effects because of internal implementation changes.
            #
            # This method is a [long-running
            # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
            # The returned `Operation` type has the following method-specific fields:
            #
            # - `metadata`: [KnowledgeOperationMetadata][google.cloud.dialogflow.v2.KnowledgeOperationMetadata]
            # - `response`: [Document][google.cloud.dialogflow.v2.Document]
            #
            # Note: The `projects.agent.knowledgeBases.documents` resource is deprecated;
            # only use `projects.knowledgeBases.documents`.
            rpc :ReloadDocument, ::Google::Cloud::Dialogflow::V2::ReloadDocumentRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
