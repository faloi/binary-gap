require 'rspec'
require_relative '../lib/binary_gap'


describe 'binary_gap' do
  context 'pirulo' do
    let(:result) { Number.binary_gap(8) }
    it { expect(result).to eq(8) }
  end
end
