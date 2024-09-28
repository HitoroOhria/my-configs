# Preconditions

- should be installed git

# Step

### Run setup script

```shell
$ ./setup.sh
```

### Run commands

```shell
$ setopt EXTENDED_GLOB

$ for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```