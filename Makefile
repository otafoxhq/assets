.DEFAULT_GOAL := help

NODE ?= node

.PHONY: help check
help: ## Show the available brand asset commands
	@awk 'BEGIN {FS = ":.*## "; printf "Otafox brand asset commands:\n\n"} /^[a-zA-Z_-]+:.*## / {printf "  %-12s %s\n", $$1, $$2}' $(MAKEFILE_LIST)

check: ## Verify brand assets and design tokens
	$(NODE) --test scripts/verify-design-assets.test.mjs scripts/verify-design-tokens.test.mjs
