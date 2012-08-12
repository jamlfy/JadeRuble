require 'ruble'

template t(:jade_template) do |t|
	t.filetype = "*.jade"
	t.invoke do |context|
		ENV['TM_DATE'] = Time.now.strftime("%Y-%m-%d")
		raw_contents = IO.read("#{File.dirname(ENV['TM_BUNDLE_SUPPORT'])}/templates/template.jade")
		raw_contents.gsub(/\$\{([Creating a new template^}]*)\}/) {|match| ENV[match[2..-2]] }
  end
end