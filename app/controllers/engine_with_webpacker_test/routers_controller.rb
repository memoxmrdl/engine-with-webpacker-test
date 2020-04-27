module EngineWithWebpackerTest
  class RoutersController < ApplicationController
    def show
      redirect_to EngineWithWebpackerTest.webpacker.manifest.lookup("application-test.js")
    end
  end
end
