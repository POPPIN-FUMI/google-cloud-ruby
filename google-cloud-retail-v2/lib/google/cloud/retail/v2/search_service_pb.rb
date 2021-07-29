# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/retail/v2/search_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/retail/v2/common_pb'
require 'google/cloud/retail/v2/product_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/retail/v2/search_service.proto", :syntax => :proto3) do
    add_message "google.cloud.retail.v2.SearchRequest" do
      optional :placement, :string, 1
      optional :branch, :string, 2
      optional :query, :string, 3
      optional :visitor_id, :string, 4
      optional :user_info, :message, 5, "google.cloud.retail.v2.UserInfo"
      optional :page_size, :int32, 7
      optional :page_token, :string, 8
      optional :offset, :int32, 9
      optional :filter, :string, 10
      optional :canonical_filter, :string, 28
      optional :order_by, :string, 11
      repeated :facet_specs, :message, 12, "google.cloud.retail.v2.SearchRequest.FacetSpec"
      optional :dynamic_facet_spec, :message, 21, "google.cloud.retail.v2.SearchRequest.DynamicFacetSpec"
      optional :boost_spec, :message, 13, "google.cloud.retail.v2.SearchRequest.BoostSpec"
      optional :query_expansion_spec, :message, 14, "google.cloud.retail.v2.SearchRequest.QueryExpansionSpec"
      repeated :variant_rollup_keys, :string, 17
      repeated :page_categories, :string, 23
    end
    add_message "google.cloud.retail.v2.SearchRequest.FacetSpec" do
      optional :facet_key, :message, 1, "google.cloud.retail.v2.SearchRequest.FacetSpec.FacetKey"
      optional :limit, :int32, 2
      repeated :excluded_filter_keys, :string, 3
      optional :enable_dynamic_position, :bool, 4
    end
    add_message "google.cloud.retail.v2.SearchRequest.FacetSpec.FacetKey" do
      optional :key, :string, 1
      repeated :intervals, :message, 2, "google.cloud.retail.v2.Interval"
      repeated :restricted_values, :string, 3
      repeated :prefixes, :string, 8
      repeated :contains, :string, 9
      optional :order_by, :string, 4
      optional :query, :string, 5
    end
    add_message "google.cloud.retail.v2.SearchRequest.DynamicFacetSpec" do
      optional :mode, :enum, 1, "google.cloud.retail.v2.SearchRequest.DynamicFacetSpec.Mode"
    end
    add_enum "google.cloud.retail.v2.SearchRequest.DynamicFacetSpec.Mode" do
      value :MODE_UNSPECIFIED, 0
      value :DISABLED, 1
      value :ENABLED, 2
    end
    add_message "google.cloud.retail.v2.SearchRequest.BoostSpec" do
      repeated :condition_boost_specs, :message, 1, "google.cloud.retail.v2.SearchRequest.BoostSpec.ConditionBoostSpec"
    end
    add_message "google.cloud.retail.v2.SearchRequest.BoostSpec.ConditionBoostSpec" do
      optional :condition, :string, 1
      optional :boost, :float, 2
    end
    add_message "google.cloud.retail.v2.SearchRequest.QueryExpansionSpec" do
      optional :condition, :enum, 1, "google.cloud.retail.v2.SearchRequest.QueryExpansionSpec.Condition"
    end
    add_enum "google.cloud.retail.v2.SearchRequest.QueryExpansionSpec.Condition" do
      value :CONDITION_UNSPECIFIED, 0
      value :DISABLED, 1
      value :AUTO, 3
    end
    add_message "google.cloud.retail.v2.SearchResponse" do
      repeated :results, :message, 1, "google.cloud.retail.v2.SearchResponse.SearchResult"
      repeated :facets, :message, 2, "google.cloud.retail.v2.SearchResponse.Facet"
      optional :total_size, :int32, 3
      optional :corrected_query, :string, 4
      optional :attribution_token, :string, 5
      optional :next_page_token, :string, 6
      optional :query_expansion_info, :message, 7, "google.cloud.retail.v2.SearchResponse.QueryExpansionInfo"
      optional :redirect_uri, :string, 10
    end
    add_message "google.cloud.retail.v2.SearchResponse.SearchResult" do
      optional :id, :string, 1
      optional :product, :message, 2, "google.cloud.retail.v2.Product"
      optional :matching_variant_count, :int32, 3
      map :matching_variant_fields, :string, :message, 4, "google.protobuf.FieldMask"
      map :variant_rollup_values, :string, :message, 5, "google.protobuf.Value"
    end
    add_message "google.cloud.retail.v2.SearchResponse.Facet" do
      optional :key, :string, 1
      repeated :values, :message, 2, "google.cloud.retail.v2.SearchResponse.Facet.FacetValue"
      optional :dynamic_facet, :bool, 3
    end
    add_message "google.cloud.retail.v2.SearchResponse.Facet.FacetValue" do
      optional :count, :int64, 3
      oneof :facet_value do
        optional :value, :string, 1
        optional :interval, :message, 2, "google.cloud.retail.v2.Interval"
      end
    end
    add_message "google.cloud.retail.v2.SearchResponse.QueryExpansionInfo" do
      optional :expanded_query, :bool, 1
    end
  end
end

module Google
  module Cloud
    module Retail
      module V2
        SearchRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest").msgclass
        SearchRequest::FacetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.FacetSpec").msgclass
        SearchRequest::FacetSpec::FacetKey = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.FacetSpec.FacetKey").msgclass
        SearchRequest::DynamicFacetSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.DynamicFacetSpec").msgclass
        SearchRequest::DynamicFacetSpec::Mode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.DynamicFacetSpec.Mode").enummodule
        SearchRequest::BoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.BoostSpec").msgclass
        SearchRequest::BoostSpec::ConditionBoostSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.BoostSpec.ConditionBoostSpec").msgclass
        SearchRequest::QueryExpansionSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.QueryExpansionSpec").msgclass
        SearchRequest::QueryExpansionSpec::Condition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchRequest.QueryExpansionSpec.Condition").enummodule
        SearchResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchResponse").msgclass
        SearchResponse::SearchResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchResponse.SearchResult").msgclass
        SearchResponse::Facet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchResponse.Facet").msgclass
        SearchResponse::Facet::FacetValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchResponse.Facet.FacetValue").msgclass
        SearchResponse::QueryExpansionInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.retail.v2.SearchResponse.QueryExpansionInfo").msgclass
      end
    end
  end
end
