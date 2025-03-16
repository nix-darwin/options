<p align="center">
    <img src=".github/assets/header.png" alt="Nix Darwin's {Options}">
</p>

<p align="center">
    <h3 align="center">Nix Darwin options search via web.</h3>
</p>

<p align="center">
    <img align="center" src="https://img.shields.io/github/languages/top/xinux-org/nix-darwin-options?style=flat&logo=nixos&logoColor=5277C3&labelColor=ffffff&color=ffffff" alt="Top Used Language">
    <a href="https://github.com/xinux-org/nix-darwin-options/actions/workflows/update.yml"><img align="center" src="https://img.shields.io/github/actions/workflow/status/xinux-org/nix-darwin-options/update.yml?style=flat&logo=github&logoColor=5277C3&labelColor=ffffff&color=ffffff" alt="Update CI"></a>
</p>

## About

Find [nix-darwin](https://github.com/LnL7/nix-darwin) options quickly using the web interface.

> [!NOTE]
> This repository is actually adopted version of [mipmip's home-manager-option-search](https://github.com/mipmip/home-manager-option-search). He deserves most of the credits for this work. We just decided to use his efforts for the nix-darwin community.

## Maintainers Notes

After a new NixOS and Nix Darwin release, update the release info in the Hugo
config:

Edit `config.yaml`, and update the following...

```yaml
params:
  release_current_stable: nix-darwin-24.11
  releases:
    - name: unstable
      value: master
    - name: 24.11 (stable)
      value: nix-darwin-24.11
```

This file is used by ./scripts/build_and_parse_hm_options.rb and by Hugo when
generating a new website version.

## Credits & Thanks

- Powered by [Xinux](https://xinux.uz/)
- [JS Search](https://github.com/bvaughn/js-search), efficient, client-side search library for JavaScript and JSON objects
- Header inspired by the [DocDock](https://docdock.vjeantet.fr/) Hugo Theme.
- The guy behind the original repo: [home-manager-options-extranix](https://github.com/mipmip)

## License

This project inherited Apache-2.0 license from its original repo - see the [LICENSE](license) file for details.

<p align="center">
    <img src=".github/assets/footer.png" alt="Nix Darwin's {Options}">
</p>
