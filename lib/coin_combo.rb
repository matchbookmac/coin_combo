class String
  define_method(:coin_combo) do
    if(self.to_f().truncate().==(0))
      change = self.to_f().*(100).round()
    else
      change = self.to_f().%(self.to_f().truncate()).round(2).*(100).to_i()
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
