require 'rails_helper'

RSpec.describe Configuration, type: :model do
  context 'Associations' do
    # Assert
    it { is_expected.to have_many(:rockets) }
  end
end
