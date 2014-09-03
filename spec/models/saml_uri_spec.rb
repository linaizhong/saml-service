require 'rails_helper'

describe SamlUri do
  it_behaves_like 'a basic model'

  it { is_expected.to validate_presence :uri }
  it { is_expected.to validate_presence :type }
end