# Shaharia Lab Homebrew Tap

Official Homebrew tap for installing CLI tools from [Shaharia Lab](https://github.com/shaharia-lab).

## Quick Start

```bash
# Add the tap (one-time setup)
brew tap shaharia-lab/tap

# Install any tool using short names
brew install codenav
brew install gscli
brew install slackcli
```

## Available Formulas

| Formula | Description | Repository |
|---------|-------------|------------|
| `codenav` | AI-powered codebase exploration and understanding tool | [code-navigator](https://github.com/shaharia-lab/code-navigator) |
| `gscli` | Google Suite CLI - Access Gmail, Drive, and Calendar from command line | [gscli](https://github.com/shaharia-lab/gscli) |
| `slackcli` | Slack CLI - Interact with Slack from command line | [slackcli](https://github.com/shaharia-lab/slackcli) |
| `echoy` | Intelligent & smart AI assistance for your daily life | [echoy](https://github.com/shaharia-lab/echoy) |

## Installation Methods

### Recommended: Add tap first (shorter commands)

```bash
# One-time setup
brew tap shaharia-lab/tap

# Then install using short names
brew install codenav
brew install gscli
brew install slackcli
```

### Alternative: Direct install (no tap setup needed)

```bash
# Install directly with full path
brew install shaharia-lab/tap/codenav
brew install shaharia-lab/tap/gscli
brew install shaharia-lab/tap/slackcli
```

## Platform Support

All formulas support both **macOS** (Intel & Apple Silicon) and **Linux** (x86_64).

## Installing Specific Versions

You can pin to specific versions using versioned formulas:

```bash
# Install specific version
brew install codenav@0.4.3
brew install gscli@0.1.3
brew install slackcli@0.2.1

# List available versions
ls $(brew --repository shaharia-lab/tap)/Formula/
```

Note: Versioned formulas are `keg_only` and won't be linked automatically. Use `brew link --force <formula>` if needed.

## Upgrading

```bash
# Update Homebrew and upgrade all packages
brew update
brew upgrade

# Or upgrade a specific formula
brew upgrade codenav
```

## Uninstalling

```bash
# Uninstall a formula
brew uninstall codenav

# Remove the tap entirely
brew untap shaharia-lab/tap
```

## Troubleshooting

```bash
# Update Homebrew
brew update

# Reinstall a formula
brew reinstall codenav

# Check formula info
brew info codenav

# Check for issues
brew doctor
```

## Contributing

Formula updates are automated through GitHub Actions when new releases are published in the source repositories.

## License

MIT License - See individual tool repositories for their specific licenses.
