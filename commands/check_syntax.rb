require 'ruble'

command t(:jadesyntax) do |cmd|
	cmd.key_binding = 'M2+M4+J'
	cmd.scope = 'text.jade'
	cmd.output = :show_as_tooltip
	cmd.input = :none
	cmd.invoke do |context|
	# TODO Check syntax against file contents, so we pick up unsaved changes!
		context.exit_show_tool_tip('File not found') unless File.exists?(ENV['TM_FILEPATH'])
	# TODO mirar si el check funciona!
		result = IO.popen("jade '#{ENV['TM_FILEPATH']}' --out /tmp ") {|io| io.read }
		if result.nil? or result.strip.length == 0
			"No output from 'Jade'. Please be sure the Jade are installed. Install 'npm -g install jade'"
		else
		result
		end
	end
end