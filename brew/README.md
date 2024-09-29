# Brew Backup and Restore

## Backup

Run the script:

    ./get-brew-things.sh

Creates:
- `brew-leaves.txt`
- `brew-casks.txt`

## Restore

To restore leaves:

    xargs brew install < brew-leaves.txt

To restore casks:

    xargs brew install --cask < brew-casks.txt