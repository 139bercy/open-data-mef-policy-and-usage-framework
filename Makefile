## Semver

version:
	semantic-release version

patch:
	semantic-release version --patch

minor:
	semantic-release version --minor

major:
	semantic-release version --major

## Content management

toc:
	./scripts/toc.sh src/main.md

## Files management

format:
	mdformat src

release:
	./scripts/release.sh src/main.md
