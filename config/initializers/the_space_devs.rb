Rails.application.config.the_space_devs_cfg = JSON.parse(
  ENV.fetch('THE_SPACE_DEVS_CFG', '{}')
).with_indifferent_access