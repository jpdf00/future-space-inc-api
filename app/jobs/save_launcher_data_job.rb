class SaveLauncherDataJob < ApplicationJob
  queue_as :default

  def perform(limit:, offset:)
    launches = ApiRequest::TheSpaceDevs::ExecuteGet.new.call(endpoint: "launch/?limit=#{limit}&offset=#{offset}")['results']

    launches.each do |launch|
      save_data('launcher', launch)
    end
  end

  private

  def save_data(model_name, data)
    data.each do |key, value|
      if value.is_a?(Hash)
        data[key] = save_data(key, value)
        data = data.transform_keys(key => "#{key}_id")
      end
    end

    model = model_name.classify.constantize
    instance = model.where(id: data['id']).first

    if model_name == 'launcher'
      data['imported_t'] = Time.now
      data['publishing_status'] = 0
      data['manual_update'] = false
      data['program'] = []
    end

    if instance
      instance.update(data) unless instance.respond_to?(:manual_update) && instance.manual_update
      instance.id
    else
      model.create(data).id
    end
  end
end