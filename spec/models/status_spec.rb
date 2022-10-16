require 'rails_helper'

RSpec.describe Status, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:launchers) }
  end
end
