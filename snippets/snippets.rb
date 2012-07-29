require 'ruble'

with_defaults :scope => 'text.jade' do

# Filters
	snippet t(:coffeescript ) do |s|
		s.expansion = ':coffeescript
  $0'
	end

	snippet t(:cdata) do |s|
		s.expansion = ':cdata
  $0'
	end

	snippet t(:javascript) do |s|
		s.expansion = 'script
  $0'
	end

	snippet t(:markdown) do |s|
		s.expansion = ':markdown
  $0'
	end

	snippet t(:less) do |s|
		s.expansion = ':less
  $0'
	end

	snippet t(:stylus) do |s|
		s.expansion = ':stylus
  $0'
	end

	# META
	snippet t(:meta_http_equiv) do |s|
		s.trigger = 'meta'
		s.expansion = 'meta( http-equiv = \'Content-Type\', :content = \'text/html;\', charset = \'utf-8\'${1:, }$2 )$0'
	end

	snippet t(:meta_generic) do |s|
		s.trigger = 'meta'
		s.expansion = 'meta( :name = \'$1\', :content = \'$2\'${3:, }$4 )$0'
	end

	# Doctypes
	snippet t(:xhtml_1_strict) do |s|
		s.expansion = 'doctypes strict'
	end

	snippet t(:xhtml_1_transitional) do |s|
		s.expansion = 'doctypes'
	end

	snippet t(:xhtml_1_1) do |s|
		s.expansion = 'doctypes 1.1'
	end

	snippet t(:xhtml_mobile) do |s|
		s.expansion = 'doctypes Mobile'
	end

	snippet t(:html5) do |s|
		s.expansion = 'doctypes 5'
	end

	# XML
	snippet t(:xml_prolog) do |s|
		s.expansion = 'doctypes XML'
	end

	# TODO Miscellaneous
	snippet t(:insert_tag) do |s|
		s.key_binding = 'CONTROL+M2+,'
		s.expansion = '${1:\'string\'/head/body/input/p/article/section/audio/video/a/header/label/li/infarme/form/button/\'string\'}$0'
	end

	snippet t(:ie_conditional) do |s|
		s.trigger = 'ie'
		s.expansion = '//[if ${1:lte }IE${3: ${2:version}}]
  $0'
	end

	snippet t(:page_class) do |s|
		s.trigger = 'pc'
		s.expansion = '.page_class'
	end

	snippet t(:element_attribute) do |s|
		s.trigger = ':'
		s.expansion = '${1:\'string\'/style/title/name/\'string\'} = "$2"${3:, }$0,'
	end

	snippet t(:data) do |s|
	#TODO revisar
		s.trigger = '#'
		s.expansion = '\#{ ${1:\'string\'\'string\', } }$0'
	end
end