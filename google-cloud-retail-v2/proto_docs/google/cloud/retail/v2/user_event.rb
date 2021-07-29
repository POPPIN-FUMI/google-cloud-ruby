# frozen_string_literal: true

# Copyright 2021 Google LLC
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
    module Retail
      module V2
        # UserEvent captures all metadata information Retail API needs to know about
        # how end users interact with customers' website.
        # @!attribute [rw] event_type
        #   @return [::String]
        #     Required. User event type. Allowed values are:
        #
        #     * `add-to-cart`: Products being added to cart.
        #     * `category-page-view`: Special pages such as sale or promotion pages
        #       viewed.
        #     * `completion`: Completion query result showed/clicked.
        #     * `detail-page-view`: Products detail page viewed.
        #     * `home-page-view`: Homepage viewed.
        #     * `promotion-offered`: Promotion is offered to a user.
        #     * `promotion-not-offered`: Promotion is not offered to a user.
        #     * `purchase-complete`: User finishing a purchase.
        #     * `search`: Product search.
        #     * `shopping-cart-page-view`: User viewing a shopping cart.
        # @!attribute [rw] visitor_id
        #   @return [::String]
        #     Required. A unique identifier for tracking visitors.
        #
        #     For example, this could be implemented with an HTTP cookie, which should be
        #     able to uniquely identify a visitor on a single device. This unique
        #     identifier should not change if the visitor log in/out of the website.
        #
        #     The field must be a UTF-8 encoded string with a length limit of 128
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     The field should not contain PII or user-data. We recommend to use Google
        #     Analystics [Client
        #     ID](https://developers.google.com/analytics/devguides/collection/analyticsjs/field-reference#clientId)
        #     for this field.
        # @!attribute [rw] session_id
        #   @return [::String]
        #     A unique identifier for tracking a visitor session with a length limit of
        #     128 bytes. A session is an aggregation of an end user behavior in a time
        #     span.
        #
        #     A general guideline to populate the sesion_id:
        #     1. If user has no activity for 30 min, a new session_id should be assigned.
        #     2. The session_id should be unique across users, suggest use uuid or add
        #     visitor_id as prefix.
        # @!attribute [rw] event_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Only required for
        #     {::Google::Cloud::Retail::V2::UserEventService::Client#import_user_events UserEventService.ImportUserEvents}
        #     method. Timestamp of when the user event happened.
        # @!attribute [rw] experiment_ids
        #   @return [::Array<::String>]
        #     A list of identifiers for the independent experiment groups this user event
        #     belongs to. This is used to distinguish between user events associated with
        #     different experiment setups (e.g. using Retail API, using different
        #     recommendation models).
        # @!attribute [rw] attribution_token
        #   @return [::String]
        #     Highly recommended for user events that are the result of
        #     {::Google::Cloud::Retail::V2::PredictionService::Client#predict PredictionService.Predict}.
        #     This field enables accurate attribution of recommendation model
        #     performance.
        #
        #     The value must be a valid
        #     {::Google::Cloud::Retail::V2::PredictResponse#attribution_token PredictResponse.attribution_token}
        #     for user events that are the result of
        #     {::Google::Cloud::Retail::V2::PredictionService::Client#predict PredictionService.Predict}.
        #     The value must be a valid
        #     {::Google::Cloud::Retail::V2::SearchResponse#attribution_token SearchResponse.attribution_token}
        #     for user events that are the result of
        #     {::Google::Cloud::Retail::V2::SearchService::Client#search SearchService.Search}.
        #
        #     This token enables us to accurately attribute page view or purchase back to
        #     the event and the particular predict response containing this
        #     clicked/purchased product. If user clicks on product K in the
        #     recommendation results, pass
        #     {::Google::Cloud::Retail::V2::PredictResponse#attribution_token PredictResponse.attribution_token}
        #     as a URL parameter to product K's page. When recording events on product
        #     K's page, log the
        #     {::Google::Cloud::Retail::V2::PredictResponse#attribution_token PredictResponse.attribution_token}
        #     to this field.
        # @!attribute [rw] product_details
        #   @return [::Array<::Google::Cloud::Retail::V2::ProductDetail>]
        #     The main product details related to the event.
        #
        #     This field is required for the following event types:
        #
        #     * `add-to-cart`
        #     * `detail-page-view`
        #     * `purchase-complete`
        #
        #     In a `search` event, this field represents the products returned to the end
        #     user on the current page (the end user may have not finished broswing the
        #     whole page yet). When a new page is returned to the end user, after
        #     pagination/filtering/ordering even for the same query, a new `search` event
        #     with different
        #     {::Google::Cloud::Retail::V2::UserEvent#product_details product_details} is
        #     desired. The end user may have not finished broswing the whole page yet.
        # @!attribute [rw] completion_detail
        #   @return [::Google::Cloud::Retail::V2::CompletionDetail]
        #     The main completion details related to the event.
        #
        #     In a `completion` event, this field represents the completions returned to
        #     the end user and the clicked completion by the end user. In a `search`
        #     event, it represents the search event happens after clicking completion.
        # @!attribute [rw] attributes
        #   @return [::Google::Protobuf::Map{::String => ::Google::Cloud::Retail::V2::CustomAttribute}]
        #     Extra user event features to include in the recommendation model.
        #
        #     The key must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     For product recommendation, an example of extra user information is
        #     traffic_channel, i.e. how user arrives at the site. Users can arrive
        #     at the site by coming to the site directly, or coming through Google
        #     search, and etc.
        # @!attribute [rw] cart_id
        #   @return [::String]
        #     The id or name of the associated shopping cart. This id is used
        #     to associate multiple items added or present in the cart before purchase.
        #
        #     This can only be set for `add-to-cart`, `purchase-complete`, or
        #     `shopping-cart-page-view` events.
        # @!attribute [rw] purchase_transaction
        #   @return [::Google::Cloud::Retail::V2::PurchaseTransaction]
        #     A transaction represents the entire purchase transaction.
        #
        #     Required for `purchase-complete` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] search_query
        #   @return [::String]
        #     The user's search query.
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#query SearchRequest.query} for
        #     definition.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 5,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     At least one of
        #     {::Google::Cloud::Retail::V2::UserEvent#search_query search_query} or
        #     {::Google::Cloud::Retail::V2::UserEvent#page_categories page_categories} is
        #     required for `search` events. Other event types should not set this field.
        #     Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] filter
        #   @return [::String]
        #     The filter syntax consists of an expression language for constructing a
        #     predicate from one or more fields of the products being filtered.
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#filter SearchRequest.filter} for
        #     definition and syntax.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] order_by
        #   @return [::String]
        #     The order in which products are returned.
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#order_by SearchRequest.order_by}
        #     for definition and syntax.
        #
        #     The value must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        #
        #     This can only be set for `search` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] offset
        #   @return [::Integer]
        #     An integer that specifies the current offset for pagination (the 0-indexed
        #     starting location, amongst the products deemed by the API as relevant).
        #
        #     See {::Google::Cloud::Retail::V2::SearchRequest#offset SearchRequest.offset} for
        #     definition.
        #
        #     If this field is negative, an INVALID_ARGUMENT is returned.
        #
        #     This can only be set for `search` events. Other event types should not set
        #     this field. Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] page_categories
        #   @return [::Array<::String>]
        #     The categories associated with a category page.
        #
        #     To represent full path of category, use '>' sign to separate different
        #     hierarchies. If '>' is part of the category name, please replace it with
        #     other character(s).
        #
        #     Category pages include special pages such as sales or promotions. For
        #     instance, a special sale page may have the category hierarchy:
        #     "pageCategories" : ["Sales > 2017 Black Friday Deals"].
        #
        #     Required for `category-page-view` events. At least one of
        #     {::Google::Cloud::Retail::V2::UserEvent#search_query search_query} or
        #     {::Google::Cloud::Retail::V2::UserEvent#page_categories page_categories} is
        #     required for `search` events. Other event types should not set this field.
        #     Otherwise, an INVALID_ARGUMENT error is returned.
        # @!attribute [rw] user_info
        #   @return [::Google::Cloud::Retail::V2::UserInfo]
        #     User information.
        # @!attribute [rw] uri
        #   @return [::String]
        #     Complete URL (window.location.href) of the user's current page.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically. Maximum length 5,000
        #     characters.
        # @!attribute [rw] referrer_uri
        #   @return [::String]
        #     The referrer URL of the current page.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically.
        # @!attribute [rw] page_view_id
        #   @return [::String]
        #     A unique id of a web page view.
        #
        #     This should be kept the same for all user events triggered from the same
        #     pageview. For example, an item detail page view could trigger multiple
        #     events as the user is browsing the page. The `pageViewId` property should
        #     be kept the same for all these events so that they can be grouped together
        #     properly.
        #
        #     When using the client side event reporting with JavaScript pixel and Google
        #     Tag Manager, this value is filled in automatically.
        class UserEvent
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::Google::Cloud::Retail::V2::CustomAttribute]
          class AttributesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Detailed product information associated with a user event.
        # @!attribute [rw] product
        #   @return [::Google::Cloud::Retail::V2::Product]
        #     Required. {::Google::Cloud::Retail::V2::Product Product} information.
        #
        #     Only {::Google::Cloud::Retail::V2::Product#id Product.id} field is used when
        #     ingesting an event, all other product fields are ignored as we will look
        #     them up from the catalog.
        # @!attribute [rw] quantity
        #   @return [::Google::Protobuf::Int32Value]
        #     Quantity of the product associated with the user event.
        #
        #     For example, this field will be 2 if two products are added to the shopping
        #     cart for `purchase-complete` event. Required for `add-to-cart` and
        #     `purchase-complete` event types.
        class ProductDetail
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Detailed completion information including completion attribution token and
        # clicked completion info.
        # @!attribute [rw] completion_attribution_token
        #   @return [::String]
        #     Completion attribution token in
        #     {::Google::Cloud::Retail::V2::CompleteQueryResponse#attribution_token CompleteQueryResponse.attribution_token}.
        # @!attribute [rw] selected_suggestion
        #   @return [::String]
        #     End user selected
        #     {::Google::Cloud::Retail::V2::CompleteQueryResponse::CompletionResult#suggestion CompleteQueryResponse.CompletionResult.suggestion}.
        # @!attribute [rw] selected_position
        #   @return [::Integer]
        #     End user selected
        #     {::Google::Cloud::Retail::V2::CompleteQueryResponse::CompletionResult#suggestion CompleteQueryResponse.CompletionResult.suggestion}
        #     position, starting from 0.
        class CompletionDetail
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A transaction represents the entire purchase transaction.
        # @!attribute [rw] id
        #   @return [::String]
        #     The transaction ID with a length limit of 128 characters.
        # @!attribute [rw] revenue
        #   @return [::Float]
        #     Required. Total non-zero revenue or grand total associated with the
        #     transaction. This value include shipping, tax, or other adjustments to
        #     total revenue that you want to include as part of your revenue
        #     calculations.
        # @!attribute [rw] tax
        #   @return [::Float]
        #     All the taxes associated with the transaction.
        # @!attribute [rw] cost
        #   @return [::Float]
        #     All the costs associated with the products. These can be manufacturing
        #     costs, shipping expenses not borne by the end user, or any other costs,
        #     such that:
        #
        #     * Profit = {::Google::Cloud::Retail::V2::PurchaseTransaction#revenue revenue} -
        #     {::Google::Cloud::Retail::V2::PurchaseTransaction#tax tax} -
        #     {::Google::Cloud::Retail::V2::PurchaseTransaction#cost cost}
        # @!attribute [rw] currency_code
        #   @return [::String]
        #     Required. Currency code. Use three-character ISO-4217 code.
        class PurchaseTransaction
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
