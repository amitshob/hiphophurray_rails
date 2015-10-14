require 'rails_helper'

describe Song do
  it { should validate_presence_of :title }
  it { should validate_presence_of :artist }
  it { should belong_to :subgenre }
end
