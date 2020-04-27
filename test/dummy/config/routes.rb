Rails.application.routes.draw do
  mount EngineWithWebpackerTest::Engine => "/engine_with_webpacker_test"

  root "home#index"
end
