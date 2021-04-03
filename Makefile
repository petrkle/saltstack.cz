help:
	@echo "help     - tato nápověda"
	@echo "web      - vygeneruje web"
	@echo "install  - nainstaluje závislosti"
	@echo "clean    - smaže generované ikonky"

web:
	./icons.sh
	bundle exec middleman build --clean

install:
	bundle install

clean:
	rm -f source/img/slanka-*.png
