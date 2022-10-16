require 'rails_helper'

RSpec.describe Pad, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:launchers) }
    it { is_expected.to belong_to(:location).optional(true) }
  end
end
