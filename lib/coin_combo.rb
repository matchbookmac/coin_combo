class Float
  define_method(:coin_combo) do
    if(self.truncate().==(0))
      change = self.*(100).to_i()
    else
      change = self.%(self.truncate()).round(2).*(100).to_i()
    end
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

50.23
23


50.53
50
