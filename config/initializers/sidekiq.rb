# frozen_string_literal: true

redis_url = ENV.fetch('REDIS_URL', 'redis://localhost:6379/0')

module RedisClient
  class << self
    def redis
      @redis ||= Redis.new(url: redis_url)
    end
  end
end

Sidekiq.configure_client do |config|
  config.redis = { url: redis_url }
end

Sidekiq.configure_server do |config|
  schedule_file = 'config/schedule.yml'
  Sidekiq::Cron::Job.load_from_hash(YAML.load_file(schedule_file)) if File.exist?(schedule_file)

  config.redis = { url: redis_url }
end
