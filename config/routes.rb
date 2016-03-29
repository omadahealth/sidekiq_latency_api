SidekiqLatencyApi::Engine.routes.draw do
  scope module: 'sidekiq_latency_api' do
    resource :latency, only: :show
  end
end
