require 'ruble'

template t(:template_new) do |t|
	t.filetype = "*.jade"
	t.invoke do |context|
		ENV['TM_DATE'] = Time.now.strftime("%Y-%m-%d")
		raw_contents = IO.read("#{File.dirname(ENV['TM_BUNDLE_SUPPORT'])}/templates/new.jade")
		raw_contents.gsub(/\$\{([Creating a new template^}]*)\}/) {|match| ENV[match[2..-2]] }
	end
end

template t(:template_extend) do |t|
	t.filetype = "*.jade"
	t.invoke do |context|
		raw_contents = IO.read("#{ENV['TM_BUNDLE_PATH']}/templates/extend.jade")
		raw_contents.gsub(/${([^}]*)}/) {|match| ENV[match[2..-2]] }
	end
end

template t(:template_mix) do |t|
	t.filetype = "*.jade"
	t.invoke do |context|
		raw_contents = IO.read("#{ENV['TM_BUNDLE_PATH']}/templates/mix.jade")
		raw_contents.gsub(/${([^}]*)}/) {|match| ENV[match[2..-2]] }
	end
end