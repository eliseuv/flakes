# Nix Development Environments Flakes

Collection of Nix flakes for different programming languages.

## Usage

Move the flake file to your project directory:

```bash
mv language.flake.nix flake.nix
```

Run nix develop to enter the development environment:

```bash
nix develop
```

Or use direnv to automatically enter the development environment:

```bash
echo "use flake" > .envrc
direnv allow
```

## List of Flakes

- [C](c.flake.nix)
- [Rust](rust.flake.nix)
- [Haskell](haskell.flake.nix)
- [Zig](zig.flake.nix)
- [Python](python.flake.nix)
- [Python with uv](python-uv.flake.nix)
