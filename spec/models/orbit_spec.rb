require 'rails_helper'

RSpec.describe Orbit, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:missions) }
  end
end
