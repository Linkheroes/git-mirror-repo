# Mirror and Upload Repo Action

This action mirrors a GitHub repository into a specific directory and uploads the content to another repository with commit history.

## Inputs

- `source-repo`: The source repository to mirror.
- `target-dir`: The target directory to mirror the repository into.
- `target-repo`: The target repository to upload the mirrored content.
- `github-token`: The GitHub token for authentication.

## Example usage

```yaml
- name: Mirror and Upload Repo
  uses: Linkheroes/git-mirror-repo@latest
  with:
    source-repo: 'https://github.com/source-repo/repo.git'
    target-dir: 'path/to/target/dir'
    target-repo: 'target-username/target-repo'
    github-token: \${{ secrets.GITHUB_TOKEN }}
```

### Exemple d'utilisation dans un workflow

Voici un exemple de workflow GitHub utilisant votre action :

```yaml
name: Mirror and Upload Repo

on:
  push:
    branches:
      - main

jobs:
  mirror-and-upload:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Mirror and Upload Repo
        uses: Linkheroes/git-mirror-repo@latest
        with:
          source-repo: 'https://github.com/source-repo/repo.git'
          target-dir: 'path/to/target/dir'
          target-repo: 'target-username/target-repo'
          github-token: ${{ secrets.GITHUB_TOKEN }}
```
