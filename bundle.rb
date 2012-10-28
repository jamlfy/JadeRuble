require 'ruble'

bundle do |bundle|
	bundle.display_name = t(:bundle_name)
	bundle.author = 'AlejoNext'
	bundle.copyright = 'Distributed under the MIT license.'
	bundle.repository = 'git://github.com/alejonext/JadeRuble.git'
	bundle.description =  <<END
<a href="http://jade-lang.com/">Jade</a>is a high performance template engine heavily influenced by HAML and implemented with JavaScript for node.
END
	bundle.folding['text.jade'] = /^\s*([\#\:\.\w].*)[\=|\:|\!|\.|\(]\s^$/, /^\s*$/
	bundle.menu t(:bundle_name) do |jade_menu|
		jade_menu.menu t(:insert_doctype) do |submenu|
			submenu.command t(:xhtml_1_strict)
			submenu.command t(:xhtml_1_transitional)
			submenu.command t(:xhtml_1_1)
			submenu.command t(:xhtml_mobile)
			submenu.command t(:html5)
		end
		jade_menu.menu t(:filters) do |submenu|
			submenu.command t(:cdata)
			submenu.command t(:less)
			submenu.command t(:stylus)
			submenu.command t(:javascript)
			submenu.command t(:markdown)
		end
		jade_menu.menu t(:meta_tags) do |submenu|
			submenu.command t(:meta_generic)
			submenu.command t(:meta_http_equiv)
		end
		jade_menu.separator
		jade_menu.command t(:html_en_us)
		jade_menu.command t(:element_attribute)
		jade_menu.command t(:ie_conditional)
		jade_menu.command t(:page_class)
		jade_menu.command t(:insert_tag)
		jade_menu.command t(:convert_html_to_jade)
		jade_menu.command t(:xml_prolog)
		jade_menu.separator
		jade_menu.command t(:jadesyntax)
	end
end

# Add special ENV vars
env 'text.jade' do |e|
	e['TM_COMMENT_START'] = '//-'
	e.delete('TM_COMMENT_END')
	e['TM_COMMENT_START_2'] = '//'
	e.delete('TM_COMMENT_END_2')
	e.delete('TM_COMMENT_DISABLE_INDENT')
end

