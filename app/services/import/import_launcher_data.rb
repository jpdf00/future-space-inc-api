module Import
  class ImportLauncherData

    def call
      starts_at = Time.now
      launches = ApiRequest::TheSpaceDevs::ExecuteGet.new.call(endpoint: 'launch/?limit=100')['results']

      launches.each do |launch|
        save_data('launcher', launch)
      end
      ends_at = Time.now
      p (ends_at - starts_at) * 1000
    end

    def save_data(model_name, data)
      data.each do |key, value|
        if value.is_a?(Hash)
          data[key] = save_data(key, value)
          data = data.transform_keys(key => "#{key}_id")
        end
      end

      model = model_name.classify.constantize
      instance = model.where(id: data['id']).first

      if model == 'launcher'
        data['imported_t'] = Time.now
        data['publishing_status'] = 0
        data['manual_update'] = false
        data.delete('program')
      end

      if instance
        instance.update(data) unless instance.respond_to?(:manual_update) && instance.manual_update
        instance.id
      else
        model.create(data).id
      end
    end
  end
end