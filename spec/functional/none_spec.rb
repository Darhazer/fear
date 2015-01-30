include Functional

RSpec.describe None do
  it_behaves_like 'Option'

  subject(:none) { None() }

  it 'is empty' do
    expect(none).to be_empty
  end

  it 'is not defined' do
    expect(none).not_to be_defined
  end

  specify '#get fails with exception' do
    expect do
      none.get
    end.to raise_error(NoMethodError, 'None#get')
  end

  specify '#get_or_else devaluates block and return its value' do
    result = none.get_or_else { 42 }

    expect(result).to eq 42
  end
end