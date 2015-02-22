require_relative '../vector'

RSpec.describe Vec do
  it 'can set itself' do
    v1 = Vec[1,2]
    v2 = Vec[3,4]
    v1.set!(v2)
    expect(v1).to eq(v2)
    expect(v1).not_to be(v2)
  end

  it 'does scalar multiplication' do
    expect(5 * Vec[1,2]).to eq(Vec[5,10])
  end

  it 'does vector addition' do
    expect(Vec[1,2] + Vec[3,4]).to eq(Vec[4,6])
  end

  it 'does vector subtraction' do
    expect(Vec[1,2] - Vec[3,4]).to eq(Vec[-2,-2])
  end

  it 'does vector negation' do
    expect(-Vec[1,2]).to eq(Vec[-1, -2])
  end
end
