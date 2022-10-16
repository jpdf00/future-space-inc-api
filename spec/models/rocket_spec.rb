require 'rails_helper'

RSpec.describe Rocket, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:launchers) }
    it { is_expected.to belong_to(:configuration).optional(true) }
  end
end
