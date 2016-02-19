help:
	@echo "help     - tato nápověda"
	@echo "web      - vygeneruje web"
	@echo "watch    - přegeneruje web pri změně"
	@echo "install  - nainstaluje závislosti"
	@echo "clean    - smaže generované ikonky"

web:
	./icons.sh
	bundle exec middleman build --clean

install:
	bundle install
	npm install

watch:
	grunt watch

clean:
	rm -f source/img/slanka-*.png
