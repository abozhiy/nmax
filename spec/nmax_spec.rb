require "spec_helper"

RSpec.describe Nmax do
  it "has a version number" do
    expect(Nmax::VERSION).not_to be nil
  end

  describe 'result' do

    it "should return integer if arg is not nil" do
      expect(Nmax.result(2, File.open("./text.txt"))).to eq [234313413243, 3452352345]
    end

    it "shouldn't return integer if arg is nil" do
      expect(Nmax.result(nil, File.open("./text.txt"))).to eq []
    end
  end
end
