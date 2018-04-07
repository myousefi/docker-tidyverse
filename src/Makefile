# List of languages
LANGUAGES := js java php perl lua r go rust
# Default target
run: $(LANGUAGES)


$(LANGUAGES):
	@echo "Hello from run-$@ -------------------"
	@$(MAKE) run-$@ 
	@echo "--------------------------------------"

# Define .PHONY for all run targets to ensure they are always executed
.PHONY: run $(addprefix run-,$(LANGUAGES))

# Other language targets
run-js:
	node hello_javascript.js

run-java:
	javac HelloJava.java && java HelloJava

run-php:
	php hello_php.php

run-perl:
	perl hello_perl.pl

run-lua:
	lua5.3 hello_lua.lua

run-r:
	Rscript hello_r.R

run-go:
	go run hello_go.go

run-rust:
	rustc hello_rust.rs && ./hello_rust
