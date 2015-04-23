class Float
  define_method(:coin_combo) do
    change = self.to_s().split('.')
    change = change[1].to_i()
    coins = []
    until change.==(0)
      coins.push(change./(25))
      change = change.%(25)
      coins.push(change./(10))
      change = change.%(10)
      coins.push(change./(5))
      change = change.%(5)
      coins.push(change./(1))
      change = change.%(1)
    end
    coins
  end
end
