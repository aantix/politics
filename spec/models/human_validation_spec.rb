require 'spec_helper'

describe HumanValidation do
  it "#generate" do
    lambda do
      HumanValidation.generate
    end.should change(HumanValidation, :count).by(1)
  end
end
