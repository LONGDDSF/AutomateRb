#!usr/bin/ruby

#ruby中的模块（module）

# => 模块的首字母要大写
module Mod_1

  # => 模块中，属性首字母要大写
  Mod_attr = "模块中，属性"

  def Mod_1.name
    puts "module - mod_1，模块中，方法"
  end

  def Mod_1.sex
    puts "sex is male."
  end
end

module Mod_2

  def Mod_2.name
    puts "module - mod_1"
  end

  def Mod_2.sex
    puts "sex is male."
  end
end

puts Mod_1::Mod_attr
