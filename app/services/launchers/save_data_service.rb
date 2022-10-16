module Launchers
  class SaveDataService
    def initialize(launchers)
      @launchers = launchers
    end

    FOREIGN_KEYS = %w(orbit configuration location status launch_service_provider mission pad rocket)

    def call
      @launchers.each do |launch|
        save_data('launcher', launch)
      end
    end

    private

    def save_data(model_name, data)
      data.each do |key, value|
        if value.is_a?(Hash)
          data[key] = save_data(key, value)
        end

        data = data.transform_keys(key => "#{key}_id") if FOREIGN_KEYS.include?(key)
      end

      model_class_name = model_name.classify
      model = model_class_name.constantize
      builder = "Builder::#{model_class_name}Params".constantize
      instance = model.where(id: data['id']).first

      data = builder.build(data.with_indifferent_access)


      begin
        if instance
          instance.update!(data) unless instance.respond_to?(:manual_update) && instance.manual_update
          instance.id
        else
          model.create!(data).id
        end
      rescue => err
        raise(StandardError, err)
      end
    end
  end
end