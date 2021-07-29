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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/retail/v2/version"

require "google/cloud/retail/v2/completion_service/credentials"
require "google/cloud/retail/v2/completion_service/paths"
require "google/cloud/retail/v2/completion_service/operations"
require "google/cloud/retail/v2/completion_service/client"

module Google
  module Cloud
    module Retail
      module V2
        ##
        # Auto-completion service for retail.
        #
        # This feature is only available for users who have Retail Search enabled.
        # Contact Retail Support (retail-search-support@google.com) if you are
        # interested in using Retail Search.
        #
        # To load this service and instantiate a client:
        #
        #     require "google/cloud/retail/v2/completion_service"
        #     client = ::Google::Cloud::Retail::V2::CompletionService::Client.new
        #
        module CompletionService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "completion_service", "helpers.rb"
require "google/cloud/retail/v2/completion_service/helpers" if ::File.file? helper_path
