# phabricator-source

This is designed to be an omnibus of phabricator and its required dependencies.

## Why?

The reason is to aid deployment of phabricator to allow chef-deploy or capistrano
 to be used.

### How to build

```bash
make clean
make build
make optimize
```

### Using with chef

```ruby
deploy "phabricator" do
  deploy_to '/srv/phabricator'
  repo 'https://github.com/gsdevme/phabricator-source.git'
  revision 'master'
  action :deploy

  rollback_on_error true

  migration_command 'make'
  migrate true

  symlink_before_migrate ({})
  create_dirs_before_symlink []
  purge_before_symlink []
  symlinks ({})
end

```
