require 'rails_helper'

describe OrganizationDisplayName do
  context 'Extends LocalizedName' do
    it { is_expected.to validate_presence :organization }
  end
end
