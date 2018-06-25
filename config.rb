set :css_dir, 'css'

set :images_dir, 'img'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true
page "/googledacab463a141d625.html", :directory_index => false

configure :build do
	activate :syntax
	activate :directory_indexes
	activate :minify_html
  activate :minify_css
  activate :asset_hash
end
