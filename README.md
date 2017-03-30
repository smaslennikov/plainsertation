# Plainsertation: a plaintext presentation template

## Usage

1. Fork me
2. Enable GitHub pages on your fork
3. Edit present.md to your liking
    * examples can be found [here](https://GitHub.com/egonSchiele/mdpress)
4. Install dependencies
    * `make install_dependencies_ubuntu` will do for ubuntu
    * `make install_dependencies_gentoo` will do for gentoo
    * on OS X: `gem install mdpress` may suffice (definitely untested)
5. Build your .md file and push to your repo
    * `make all` can be used to build all .md files in the repo directory
    * `make open_all` can be used to build all .md files **and** open the resulting presentations in your default browser
6. If enabled, Travis CI will ensure you built the most recent version before pushing
7. You can view your newly made presentation both locally and through GitHub pages:
    1. Locally by pointing your browser to index.html in the build directory
    2. On GitHub pages once you push to GitHub (if you forgot to build with `make all` first, this won't work)

## Contributing

Issues and PRs are welcome!

## Thanks

To [this](https://GitHub.com/egonSchiele/mdpress) many many thanks
