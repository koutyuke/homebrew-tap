# koutyuke/homebrew-tap

Homebrew casks for apps by [koutyuke](https://github.com/koutyuke).

## Capsaicin

[Capsaicin](https://github.com/koutyuke/Capsaicin) keeps your Mac awake and lights the Caps Lock LED while it does. It requires an Apple Silicon Mac with macOS 26 or later.

```bash
brew install --cask koutyuke/tap/capsaicin
```

The cask also links the `capsaicin` command. Capsaicin updates itself with Sparkle, so `brew upgrade` skips it unless you pass `--greedy`.

If you installed the helper, remove it before uninstalling: open Capsaicin's settings, go to **Helper**, and click **Remove…**. Then run:

```bash
brew uninstall --cask capsaicin
```

Add `--zap` to also remove your settings and records.

## Maintenance

The [Update cask](.github/workflows/update.yml) workflow checks Capsaicin's stable appcast every six hours. When a new version is out, it verifies that the DMG was built by Capsaicin's Release workflow with `gh attestation verify`, then updates the version and checksum and pushes the change. You can also run it manually from the Actions tab.

## License

[MIT](LICENSE)
