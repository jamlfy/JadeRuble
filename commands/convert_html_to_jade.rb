require 'ruble'

command t(:convert_html_to_jade) do |cmd|
# cmd.key_binding = 'M1+M3+C' # Alt + Cmd not friendly for overseas users
	cmd.output = :replace_selection
	cmd.input = :selection, :document
	cmd.invoke do |context|
		# html2jade
		cmd_line = "html2jade --scalate"
		output = IO.popen(cmd_line, 'r+') do |io|
			io << $stdin.read
			io.close_write
			io.read
		end
		if output.nil? or output.strip.length == 0
			context.exit_show_tooltip "No output. May need to install jade or hpricot npm. Install 'npm install html2jade' " if Ruble.is_windows?
		context.exit_discard
		end
		output
	end
end
