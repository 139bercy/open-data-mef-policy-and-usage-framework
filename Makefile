## Semver

version:
	semantic-release version --no-push

patch:
	semantic-release version --patch --no-push

minor:
	semantic-release version --minor --no-push

major:
	semantic-release version --minor --no-push

## Files management

format:
	mdformat .

release:
	./bin/release.sh src/main.md
