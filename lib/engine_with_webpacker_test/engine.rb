module EngineWithWebpackerTest
  class Engine < ::Rails::Engine
    isolate_namespace EngineWithWebpackerTest

    initializer "webpacker.proxy" do |app|
      insert_middleware = begin
                            EngineWithWebpackerTest.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
      next unless insert_middleware

      app.middleware.insert_before(
        0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
        ssl_verify_none: true,
        webpacker: EngineWithWebpackerTest.webpacker
      )
    end

    initializer "webpacker.static" do |app|
      app.config.middleware.use(
        Rack::Static,
        urls: ["/engine-with-webpacker-test-packs"],
        root: File.expand_path(File.join(__dir__, "..", "..", "public"))
      )
    end
  end
end
