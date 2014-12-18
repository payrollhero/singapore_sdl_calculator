require 'spec_helper'

describe SingaporeSDLCalculator do

  subject(:calculator) { described_class }

  describe '#calculate' do
    let(:result) {
      calculator.calculate(remuneration: remuneration)
    }

    describe "Employee's total remuneration for the month is $799.99" do
      let(:remuneration) { 799.99 }
      it { expect(result).to eq 2.00 }
    end

    describe "Employee's total remuneration for the month is $800.00" do
      let(:remuneration) { 800.00 }
      it { expect(result).to eq 2.00 }
    end

    describe "Employee's total remuneration for the month is $800.01" do
      let(:remuneration) { 800.01 }
      it { expect(result).to eq 2.000025 }
    end

    describe "Employee's total remuneration for the month is $4,499.99" do
      let(:remuneration) { 4_499.99 }
      it { expect(result).to eq 11.249975 }
    end

    describe "Employee's total remuneration for the month is $4,500.00" do
      let(:remuneration) { 4_500.00 }
      it { expect(result).to eq 11.25 }
    end

    describe "Employee's total remuneration for the month is $4,500.01" do
      let(:remuneration) { 4_500.01 }
      it { expect(result).to eq 11.25 }
    end

    describe "Employee's total remuneration for the month is $10,000.00" do
      let(:remuneration) { 10_000.00 }
      it { expect(result).to eq 11.25 }
    end

  end

end
