module SidekiqLatencyApi
  class LatenciesController < ActionController::Base

    def show
      render json: queue_latencies
    end

    protected

    def queue_latencies
      Sidekiq::Queue.all.map do |x|
        {
            name: x.name,
            latency: x.latency
        }
      end
    end
  end
end