# danhulton.com
My portfolio site

## Publishing changes

Once changes have been made in /site:

1) ensure that an AWS profile exists named "danhulton_com_publish" (running `aws configure --profile=danhulton_com_publish` to create it, if necessary).
2) Run `just dryrun` and make sure the correct files will be modified.
3) Run `just publish` to publish changes.
