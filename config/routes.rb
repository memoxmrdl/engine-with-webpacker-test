EngineWithWebpackerTest::Engine.routes.draw do
  get "/router", to: "routers#show", defaults: { format: :js }

  root "home#index"
end
