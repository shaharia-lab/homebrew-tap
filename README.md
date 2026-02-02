# Shaharia Lab Homebrew Tap

Official Homebrew tap for installing CLI tools from [Shaharia Lab](https://github.com/shaharia-lab).

## Installation

First, add the tap:

```bash
brew tap shaharia-lab/tap
```

Then install any available formula:

```bash
brew install shaharia-lab/tap/<formula-name>
```

## Available Formulas

| Formula | Description | Install Command |
|---------|-------------|-----------------|
| `codenav` | AI-powered codebase exploration and understanding tool | `brew install shaharia-lab/tap/codenav` |
| `echoy` | Intelligent & smart AI assistance for your daily life | `brew install shaharia-lab/tap/echoy` |

## Installing Specific Versions

You can install specific versions of tools by using versioned formulas:

```bash
# Install specific version
brew install shaharia-lab/tap/codenav@0.4.1

# List available versions
ls $(brew --repository shaharia-lab/tap)/Formula/
```

## Upgrading

To upgrade to the latest version:

```bash
brew update
brew upgrade shaharia-lab/tap/<formula-name>
```

## Uninstalling

```bash
brew uninstall shaharia-lab/tap/<formula-name>
```

To remove the tap entirely:

```bash
brew untap shaharia-lab/tap
```

## Troubleshooting

If you encounter issues, try:

```bash
# Update Homebrew
brew update

# Reinstall the formula
brew reinstall shaharia-lab/tap/<formula-name>

# Check formula info
brew info shaharia-lab/tap/<formula-name>
```

## Contributing

Formula updates are automated through GitHub Actions when new releases are published in the source repositories.

## License

MIT License - See individual tool repositories for their specific licenses.
