## Semver

version:
	semantic-release version --no-push

patch:
	semantic-release version --patch --no-push

minor:
	semantic-release version --minor --no-push

major:
	semantic-release version --minor --no-push

## Content management

toc:
	./bin/toc.sh src/main.md

## Files management

format:
	mdformat src

release:
	./bin/release.sh src/main.md
