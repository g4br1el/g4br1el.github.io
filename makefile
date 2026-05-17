# Makefile for Jekyll site

.PHONY: serve build clean install update new-post

# Development server with live reload
serve:
	bundle exec jekyll serve --livereload --open-url

# Development server with drafts visible
drafts:
	bundle exec jekyll serve --livereload --drafts --open-url

# Production build
build:
	JEKYLL_ENV=production bundle exec jekyll build

# Clean generated site
clean:
	bundle exec jekyll clean

# Install dependencies
install:
	bundle install

# Update dependencies
update:
	bundle update

# Create a new post (usage: make new-post TITLE="my post title")
new-post:
	@test -n "$(TITLE)" || (echo "Usage: make new-post TITLE=\"your title\"" && exit 1)
	@echo "---\nlayout: post\ntitle: \"$(TITLE)\"\ndate: $$(date '+%Y-%m-%d %H:%M:%S %z')\ncategories: \n---\n" \
		> "_posts/$$(date '+%Y-%m-%d')-$$(echo '$(TITLE)' | tr '[:upper:]' '[:lower:]' | tr ' ' '-').md"
	@echo "Created: _posts/$$(date '+%Y-%m-%d')-$$(echo '$(TITLE)' | tr '[:upper:]' '[:lower:]' | tr ' ' '-').md"

# Show help
help:
	@echo "Available targets:"
	@echo "  serve      - Dev server with live reload"
	@echo "  drafts     - Dev server including _drafts/"
	@echo "  build      - Production build"
	@echo "  clean      - Remove _site/ and .jekyll-cache/"
	@echo "  install    - bundle install"
	@echo "  update     - bundle update"
	@echo "  new-post   - Create post (TITLE=\"...\")"
	@echo "  help       - This message"

.DEFAULT_GOAL := help