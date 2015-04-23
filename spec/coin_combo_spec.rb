require('rspec')
require('coin_combo')

describe('Float#coin_combo') do
  it('returns the cents of the dollar value input') do
    expect(50.23.coin_combo()).to(eq(23))
  end
end
