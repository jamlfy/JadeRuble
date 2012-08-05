require 'ruble'

with_defaults :scope => 'text.jade' do

# Filters
	snippet t(:coffeescript ) do |s|
		s.trigger = 'cs'
		s.scope = 'text.jade'
		s.expansion = ':coffeescript
	$0'
	end

	snippet t(:cdata) do |s|
		s.trigger = 'cd'
		s.scope = 'text.jade'
		s.expansion = ':cdata
	$0'
	end

	snippet t(:script) do |s|
		s.trigger = 'sc'
		s.scope = 'text.jade'
		s.expansion = 'script
	$0'
	end

	snippet t(:javascript) do |s|
		s.trigger = 'js'
		s.scope = 'text.jade'
		s.expansion = '- $0'
	end


	snippet t(:markdown) do |s|
		s.trigger = 'md'
		s.scope = 'text.jade'
		s.expansion = ':markdown
	$0'
	end

	snippet t(:less) do |s|
		s.trigger = 'less'
		s.scope = 'text.jade'
		s.expansion = ':less
	$0'
	end

	snippet t(:stylus) do |s|
		s.trigger = 'stylus'
		s.scope = 'text.jade'
		s.expansion = ':stylus
	$0'
	end

	# META
	snippet t(:meta_http_equiv) do |s|
		s.trigger = 'meta( h'
		s.scope = 'text.jade'
		s.expansion = 'meta( http-equiv=\'Content-Type\', content =\'text/html;\', charset =\'utf-8\'${1:, }$2 )$0'
	end

	snippet t(:meta_generic) do |s|
		s.trigger = 'meta( '
		s.scope = 'text.jade'
		s.expansion = 'meta( :name = \'$1\', :content=\'$2\'${3:, }$4 )$0'
	end

	# Doctypes
	snippet t(:xhtml_1_strict) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes strict'
	end

	snippet t(:xhtml_1_transitional) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes'
	end

	snippet t(:xhtml_1_1) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes 1.1'
	end

	snippet t(:xhtml_mobile) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes Mobile'
	end

	snippet t(:html5) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes 5'
	end

	# XML
	snippet t(:xml_prolog) do |s|
		s.scope = 'text.jade'
		s.expansion = 'doctypes XML'
	end

	# TODO Miscellaneous
	snippet t(:insert_tag) do |s|
		s.scope = 'text.jade'
		s.key_binding = 'CONTROL+M2+,'
		s.expansion = '${1:head/body/input/p/article/section/audio/video/a/header/label/li/form/button/}${2: /#/./()/: }
	${2: /| }$0'
	end

	snippet t(:ie_conditional) do |s|
		s.trigger = 'ie'
		s.scope = 'text.jade'
		s.expansion = '//if ${1:lte} IE ${2:version} 
	$0'
	end
	
	snippet t(:page_class) do |s|
		s.trigger = 'class'
		s.scope = 'text.jade'
		s.expansion = '.${1:Class Name}$0'
	end

	snippet t(:element_attribute) do |s|
		s.trigger = ', '
		s.scope = 'text.jade'
		s.expansion = '${1:Attribute/style/title/name/}="${2:Value}"$0'
	end
	
	snippet t(:for) do |s|
		s.trigger = 'for'
		s.scope = 'text.jade'
		s.expansion = 'for ${1:Variable} in ${2:Object}
	$0'
	end
	
	snippet t(:each) do |s|
		s.trigger = 'each'
		s.scope = 'text.jade'
		s.expansion = 'each ${1:Variable}, i in ${2:Array}
	//- When ${2:Array} is not empty
else
	//- When ${2:Array} is empty $0'
	end
	
	snippet t(:vars) do |s|
		s.trigger = '#{}'
		s.scope = 'text.jade'
		s.expansion = '#{${1:Variable}}$0'
	end

	snippet t(:varh) do |s|
		s.trigger = '!{}'
		s.scope = 'text.jade'
		s.expansion = '!{${1:Variable}}$0'
	end

	
	snippet t(:ifelse) do |s|
		s.trigger = 'if'
		s.scope = 'text.jade'
		s.expansion = 'if ${1:Conditional}
	
else
	$0'
	end
	
	snippet t(:unless) do |s|
		s.trigger = 'unl'
		s.scope = 'text.jade'
		s.expansion = 'unless ${1:Conditional}
	$0'
	end
	
	snippet t(:extend) do |s|
		s.trigger = 'ex'
		s.scope = 'text.jade'
		s.expansion = 'extends ${1:layout}$0'
	end
	
	snippet t(:extend) do |s|
		s.trigger = 'in'
		s.scope = 'text.jade'
		s.expansion = 'include ${1:Name}$0'
	end
	
	snippet t(:block) do |s|
		s.trigger = 'bl'
		s.scope = 'text.jade'
		s.expansion = 'block ${1:Name}$0'
	end
	
	snippet t(:mix) do |s|
		s.trigger = 'mix'
		s.scope = 'text.jade'
		s.expansion = 'mixin ${1:Name}(${2:Variable})
	//- Insert your code$0'
	end
	
	snippet t(:case) do |s|
		s.trigger = 'case'
		s.scope = 'text.jade'
		s.expansion = 'case ${1:Name}
	when ${2:\'Value\'}
		//- When the ${2:\'Value\'} in the ${1:Name} 
	default
		//- When the ${1:Name} in dont in not de case $0'
	end
end