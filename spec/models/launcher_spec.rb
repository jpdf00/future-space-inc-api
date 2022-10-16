require 'rails_helper'

RSpec.describe Launcher, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to belong_to(:status).optional(true) }
    it { is_expected.to belong_to(:launch_service_provider).optional(true) }
    it { is_expected.to belong_to(:pad).optional(true) }
    it { is_expected.to belong_to(:mission).optional(true) }
    it { is_expected.to belong_to(:rocket).optional(true) }
  end
end
