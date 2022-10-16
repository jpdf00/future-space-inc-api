Rails.application.config.the_space_devs = JSON.parse(
  ENV.fetch('THE_SPACE_DEVS_CFG', '{}')
).with_indifferent_access