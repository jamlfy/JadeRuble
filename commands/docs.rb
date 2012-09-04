require 'ruble'

command 'Jade Syntax' do |cmd|
	cmd.output = :output_to_console
	cmd.input = :selection
	cmd.invoke do |context|
		selection = ENV['TM_SELECTED_TEXT']
		context.browser.open("http://naltatis.github.com/jade-syntax-docs/", :browser => :default)
	end
end