#!/usr/bin/ruby

#引用其他文件中，来访问其模块中的方法
$LOAD_PATH << '.'
require "Module"

#require_relative './Module.rb'

class CWPrint

	#类属性，不需要init，就可取值
	@@arrow = "-->"
	@@repeatCount = 5

	#实例属性，不在init后赋值，值为nil
	@testProperty="I will am nil"

	#自动生成get、set方法
	attr_accessor:name

	def initialize()
		#实例属性 - 需要在初始化之后才能赋值，否则会为nil
		@name="冬"
	end

	#自定义的方法
	def cwPrint(msg)
		print @@arrow * @@repeatCount, @name, "#@name", "#@testProperty", msg, "\n"

		#在类中，访问其他文件的模块的方法
		Mod_1.name
	end

end

aPrint = CWPrint.new()
aPrint.cwPrint("This is a String!")

#访问class的某个属性，需要使用attr_accessor自动或者手动添加get、set方法，否则无法访问
puts aPrint.name

#class 中使用其他文件中的方法

#直接调用模块中的方法
Mod_1.name
