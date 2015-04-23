class Float
  define_method(:coin_combo) do
    change = self.to_s().split('.')
    change = change[1].to_i()
  end
end
