Rails.application.config.base_urls_cfg = JSON.parse(
  ENV.fetch('BASE_URLS_CFG', '{}')
).with_indifferent_access