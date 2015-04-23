require('rspec')
require('coin_combo')

describe('Float#coin_combo') do
  it('returns the cents of the dollar value input') do
    expect((50.23).coin_combo()).to(eq(23))
  end
  it('returns 1 penny when the user needs 00.01 in change') do
    expect((0.01).coin_combo()).to(eq([0, 0, 0, 1]))
  end
  it('returns 1 nickel when the user needs 00.05 in change') do
    expect((0.05).coin_combo()).to(eq([0, 0, 1, 0]))
  end
  it('returns 1 dime when the user needs 00.10 in change') do
    expect((0.10).coin_combo()).to(eq([0, 1, 0, 0]))
  end
  it('return 1 quarter when the user needs 00.25 in change') do
    expect((0.25).coin_combo()).to(eq([1, 0, 0, 0]))
  end
end
