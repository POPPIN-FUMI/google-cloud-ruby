# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module AIPlatform
      module V1
        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#upload_model ModelService.UploadModel}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location into which to upload the Model.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] parent_model
        #   @return [::String]
        #     Optional. The resource name of the model into which to upload the version. Only
        #     specify this field when uploading a new version.
        # @!attribute [rw] model_id
        #   @return [::String]
        #     Optional. The ID to use for the uploaded Model, which will become the final
        #     component of the model resource name.
        #
        #     This value may be up to 63 characters, and valid characters are
        #     `[a-z0-9_-]`. The first character cannot be a number or hyphen.
        # @!attribute [rw] model
        #   @return [::Google::Cloud::AIPlatform::V1::Model]
        #     Required. The Model to create.
        class UploadModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Details of {::Google::Cloud::AIPlatform::V1::ModelService::Client#upload_model ModelService.UploadModel} operation.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        class UploadModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message of {::Google::Cloud::AIPlatform::V1::ModelService::Client#upload_model ModelService.UploadModel} operation.
        # @!attribute [rw] model
        #   @return [::String]
        #     The name of the uploaded Model resource.
        #     Format: `projects/{project}/locations/{location}/models/{model}`
        class UploadModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#get_model ModelService.GetModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Model resource.
        #     Format: `projects/{project}/locations/{location}/models/{model}`
        #
        #     In order to retrieve a specific version of the model, also provide
        #     the version ID or version alias.
        #       Example: `projects/{project}/locations/{location}/models/{model}@2`
        #                  or
        #                `projects/{project}/locations/{location}/models/{model}@golden`
        #     If no version ID or alias is specified, the "default" version will be
        #     returned. The "default" version alias is created for the first version of
        #     the model, and can be moved to other versions later on. There will be
        #     exactly one default version.
        class GetModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_models ModelService.ListModels}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Location to list the Models from.
        #     Format: `projects/{project}/locations/{location}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request. For field names
        #     both snake_case and camelCase are supported.
        #
        #       * `model` supports = and !=. `model` represents the Model ID,
        #         i.e. the last segment of the Model's {::Google::Cloud::AIPlatform::V1::Model#name resource name}.
        #       * `display_name` supports = and !=
        #       * `labels` supports general map functions that is:
        #         * `labels.key=value` - key:value equality
        #         * `labels.key:* or labels:key - key existence
        #         * A key including a space must be quoted. `labels."a key"`.
        #
        #     Some examples:
        #       * `model=1234`
        #       * `displayName="myDisplayName"`
        #       * `labels.myKey="myValue"`
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListModelsResponse#next_page_token ListModelsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_models ModelService.ListModels} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     A comma-separated list of fields to order by, sorted in ascending order.
        #     Use "desc" after a field name for descending.
        #     Supported fields:
        #       * `display_name`
        #       * `create_time`
        #       * `update_time`
        #
        #     Example: `display_name, create_time desc`.
        class ListModelsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_models ModelService.ListModels}
        # @!attribute [rw] models
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Model>]
        #     List of Models in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListModelsRequest#page_token ListModelsRequest.page_token} to obtain that page.
        class ListModelsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_versions ModelService.ListModelVersions}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the model to list versions for.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListModelVersionsResponse#next_page_token ListModelVersionsResponse.next_page_token} of the previous
        #     [ModelService.ListModelversions][] call.
        # @!attribute [rw] filter
        #   @return [::String]
        #     An expression for filtering the results of the request. For field names
        #     both snake_case and camelCase are supported.
        #
        #       * `labels` supports general map functions that is:
        #         * `labels.key=value` - key:value equality
        #         * `labels.key:* or labels:key - key existence
        #         * A key including a space must be quoted. `labels."a key"`.
        #
        #     Some examples:
        #       * `labels.myKey="myValue"`
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListModelVersionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_versions ModelService.ListModelVersions}
        # @!attribute [rw] models
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::Model>]
        #     List of Model versions in the requested page.
        #     In the returned Model name field, version ID instead of regvision tag will
        #     be included.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve the next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListModelVersionsRequest#page_token ListModelVersionsRequest.page_token} to obtain that page.
        class ListModelVersionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#update_model ModelService.UpdateModel}.
        # @!attribute [rw] model
        #   @return [::Google::Cloud::AIPlatform::V1::Model]
        #     Required. The Model which replaces the resource on the server.
        #     When Model Versioning is enabled, the model.name will be used to determine
        #     whether to update the model or model version.
        #     1. model.name with the @ value, e.g. models/123@1, refers to a version
        #     specific update.
        #     2. model.name without the @ value, e.g. models/123, refers to a model
        #     update.
        #     3. model.name with @-, e.g. models/123@-, refers to a model update.
        #     4. Supported model fields: display_name, description; supported
        #     version-specific fields: version_description. Labels are supported in both
        #     scenarios. Both the model labels and the version labels are merged when a
        #     model is returned. When updating labels, if the request is for
        #     model-specific update, model label gets updated. Otherwise, version labels
        #     get updated.
        #     5. A model name or model version name fields update mismatch will cause a
        #     precondition error.
        #     6. One request cannot update both the model and the version fields. You
        #     must update them separately.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. The update mask applies to the resource.
        #     For the `FieldMask` definition, see {::Google::Protobuf::FieldMask google.protobuf.FieldMask}.
        class UpdateModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#delete_model ModelService.DeleteModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the Model resource to be deleted.
        #     Format: `projects/{project}/locations/{location}/models/{model}`
        class DeleteModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#delete_model_version ModelService.DeleteModelVersion}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the model version to be deleted, with a version ID explicitly
        #     included.
        #
        #     Example: `projects/{project}/locations/{location}/models/{model}@1234`
        class DeleteModelVersionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#merge_version_aliases ModelService.MergeVersionAliases}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the model version to merge aliases, with a version ID
        #     explicitly included.
        #
        #     Example: `projects/{project}/locations/{location}/models/{model}@1234`
        # @!attribute [rw] version_aliases
        #   @return [::Array<::String>]
        #     Required. The set of version aliases to merge.
        #     The alias should be at most 128 characters, and match
        #     `[a-z][a-z0-9-]{0,126}[a-z-0-9]`.
        #     Add the `-` prefix to an alias means removing that alias from the version.
        #     `-` is NOT counted in the 128 characters. Example: `-golden` means removing
        #     the `golden` alias from the version.
        #
        #     There is NO ordering in aliases, which means
        #     1) The aliases returned from GetModel API might not have the exactly same
        #     order from this MergeVersionAliases API. 2) Adding and deleting the same
        #     alias in the request is not recommended, and the 2 operations will be
        #     cancelled out.
        class MergeVersionAliasesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#export_model ModelService.ExportModel}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The resource name of the Model to export.
        #     The resource name may contain version id or version alias to specify the
        #     version, if no version is specified, the default version will be exported.
        # @!attribute [rw] output_config
        #   @return [::Google::Cloud::AIPlatform::V1::ExportModelRequest::OutputConfig]
        #     Required. The desired output location and configuration.
        class ExportModelRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Output configuration for the Model export.
          # @!attribute [rw] export_format_id
          #   @return [::String]
          #     The ID of the format in which the Model must be exported. Each Model
          #     lists the {::Google::Cloud::AIPlatform::V1::Model#supported_export_formats export formats it supports}.
          #     If no value is provided here, then the first from the list of the Model's
          #     supported formats is used by default.
          # @!attribute [rw] artifact_destination
          #   @return [::Google::Cloud::AIPlatform::V1::GcsDestination]
          #     The Cloud Storage location where the Model artifact is to be
          #     written to. Under the directory given as the destination a new one with
          #     name "`model-export-<model-display-name>-<timestamp-of-export-call>`",
          #     where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format,
          #     will be created. Inside, the Model and any of its supporting files
          #     will be written.
          #     This field should only be set when the `exportableContent` field of the
          #     [Model.supported_export_formats] object contains `ARTIFACT`.
          # @!attribute [rw] image_destination
          #   @return [::Google::Cloud::AIPlatform::V1::ContainerRegistryDestination]
          #     The Google Container Registry or Artifact Registry uri where the
          #     Model container image will be copied to.
          #     This field should only be set when the `exportableContent` field of the
          #     [Model.supported_export_formats] object contains `IMAGE`.
          class OutputConfig
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Details of {::Google::Cloud::AIPlatform::V1::ModelService::Client#export_model ModelService.ExportModel} operation.
        # @!attribute [rw] generic_metadata
        #   @return [::Google::Cloud::AIPlatform::V1::GenericOperationMetadata]
        #     The common part of the operation metadata.
        # @!attribute [r] output_info
        #   @return [::Google::Cloud::AIPlatform::V1::ExportModelOperationMetadata::OutputInfo]
        #     Output only. Information further describing the output of this Model export.
        class ExportModelOperationMetadata
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Further describes the output of the ExportModel. Supplements
          # {::Google::Cloud::AIPlatform::V1::ExportModelRequest::OutputConfig ExportModelRequest.OutputConfig}.
          # @!attribute [r] artifact_output_uri
          #   @return [::String]
          #     Output only. If the Model artifact is being exported to Google Cloud Storage this is
          #     the full path of the directory created, into which the Model files are
          #     being written to.
          # @!attribute [r] image_output_uri
          #   @return [::String]
          #     Output only. If the Model image is being exported to Google Container Registry or
          #     Artifact Registry this is the full path of the image created.
          class OutputInfo
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Response message of {::Google::Cloud::AIPlatform::V1::ModelService::Client#export_model ModelService.ExportModel} operation.
        class ExportModelResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#import_model_evaluation ModelService.ImportModelEvaluation}
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the parent model resource.
        #     Format: `projects/{project}/locations/{location}/models/{model}`
        # @!attribute [rw] model_evaluation
        #   @return [::Google::Cloud::AIPlatform::V1::ModelEvaluation]
        #     Required. Model evaluation resource to be imported.
        class ImportModelEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#get_model_evaluation ModelService.GetModelEvaluation}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the ModelEvaluation resource.
        #     Format:
        #     `projects/{project}/locations/{location}/models/{model}/evaluations/{evaluation}`
        class GetModelEvaluationRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluations ModelService.ListModelEvaluations}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the Model to list the ModelEvaluations from.
        #     Format: `projects/{project}/locations/{location}/models/{model}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListModelEvaluationsResponse#next_page_token ListModelEvaluationsResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluations ModelService.ListModelEvaluations} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListModelEvaluationsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluations ModelService.ListModelEvaluations}.
        # @!attribute [rw] model_evaluations
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelEvaluation>]
        #     List of ModelEvaluations in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListModelEvaluationsRequest#page_token ListModelEvaluationsRequest.page_token} to obtain that page.
        class ListModelEvaluationsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#get_model_evaluation_slice ModelService.GetModelEvaluationSlice}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the ModelEvaluationSlice resource.
        #     Format:
        #     `projects/{project}/locations/{location}/models/{model}/evaluations/{evaluation}/slices/{slice}`
        class GetModelEvaluationSliceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluation_slices ModelService.ListModelEvaluationSlices}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the ModelEvaluation to list the ModelEvaluationSlices
        #     from. Format:
        #     `projects/{project}/locations/{location}/models/{model}/evaluations/{evaluation}`
        # @!attribute [rw] filter
        #   @return [::String]
        #     The standard list filter.
        #
        #       * `slice.dimension` - for =.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The standard list page size.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The standard list page token.
        #     Typically obtained via
        #     {::Google::Cloud::AIPlatform::V1::ListModelEvaluationSlicesResponse#next_page_token ListModelEvaluationSlicesResponse.next_page_token} of the previous
        #     {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluation_slices ModelService.ListModelEvaluationSlices} call.
        # @!attribute [rw] read_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Mask specifying which fields to read.
        class ListModelEvaluationSlicesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message for {::Google::Cloud::AIPlatform::V1::ModelService::Client#list_model_evaluation_slices ModelService.ListModelEvaluationSlices}.
        # @!attribute [rw] model_evaluation_slices
        #   @return [::Array<::Google::Cloud::AIPlatform::V1::ModelEvaluationSlice>]
        #     List of ModelEvaluations in the requested page.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token to retrieve next page of results.
        #     Pass to {::Google::Cloud::AIPlatform::V1::ListModelEvaluationSlicesRequest#page_token ListModelEvaluationSlicesRequest.page_token} to obtain that
        #     page.
        class ListModelEvaluationSlicesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
