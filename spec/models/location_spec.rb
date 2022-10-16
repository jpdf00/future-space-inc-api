require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:pads) }
  end
end
