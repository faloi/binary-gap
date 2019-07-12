require 'rspec'
require_relative '../lib/binary_gap'


describe 'binary_gap' do
  let(:result) { Number.binary_gap(number) }

  context 'with one gap' do
    let(:number) { 9 }
    it { expect(result).to eq(['00']) }
  end

  context 'with many gaps' do
    let(:number) { 529 }
    it { expect(result).to eq(['0000', '000']) }
  end

  context 'with gaps and leading one' do
    let(:number) { 20 }
    it { expect(result).to eq(['0']) }
  end

  context 'with no gaps' do
    let(:number) { 15 }
    it { expect(result).to eq([]) }
  end
end
