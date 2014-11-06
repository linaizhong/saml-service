require 'rails_helper'

describe LocalizedName do
  it_behaves_like 'a basic model'

  it { is_expected.to validate_presence :value }
  it { is_expected.to validate_presence :lang }
end
