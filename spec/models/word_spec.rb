require "spec_helper"

describe Word do
  it { should belong_to :meaning }
end