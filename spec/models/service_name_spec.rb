require 'rails_helper'

RSpec.describe ServiceName, type: :model do
  context 'extends LocalizedName' do
    it { is_expected.to validate_presence :attribute_consuming_service }
  end
end
