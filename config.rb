set :css_dir, 'css'

set :images_dir, 'img'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

configure :build do
	activate :syntax
	activate :directory_indexes
	activate :minify_html
  activate :minify_css
  activate :asset_hash
  activate :gzip
  activate :brotli
end
