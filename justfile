default:
  @just --list --unsorted --justfile {{justfile()}}

dev:
	@npx @11ty/eleventy --serve --watch

## OLD, MUST ADD ELEVENTY BUILD, NEW SITE FOLDER

dryrun: (publish "--dryrun")

publish $DRYRUN="--output=text":
	#!/usr/bin/env nix-shell
	#! nix-shell -i bash --pure --keep DRYRUN
	#! nix-shell -p bash awscli2
	#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/571bb44da2b030b846b33b32e075cb9bb1fef233.tar.gz

	aws s3 sync site s3://danhulton.com --delete --exclude "*.DS_Store" --profile=danhulton_com_publish "$DRYRUN"
