require "webpacker/helper"

module EngineWithWebpackerTest
  module ApplicationHelper
    include ::Webpacker::Helper

    def current_webpacker_instance
      EngineWithWebpackerTest.webpacker
    end
  end
end
