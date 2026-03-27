# AutomataNexus Homebrew Tap

[![Tap](https://img.shields.io/badge/brew-automatanexus%2Ftap-blue)](https://github.com/AutomataNexus/homebrew-tap)
[![Formulae](https://img.shields.io/badge/formulae-1-green)](https://github.com/AutomataNexus/homebrew-tap/tree/main/Formula)
[![Platform](https://img.shields.io/badge/platform-macOS%20%7C%20Linux-lightgrey)](https://github.com/AutomataNexus/homebrew-tap)

Official [Homebrew](https://brew.sh) tap for [AutomataNexus](https://github.com/AutomataNexus) tools. One tap, all our public binaries.

---

## Setup

```bash
brew tap automatanexus/tap
```

## Available Formulae

| Formula | Description | Version |
|---------|-------------|---------|
| [`nexusfoundry`](Formula/nexusfoundry.rb) | Pure Rust compiler for Hailo NPU hardware — compiles ONNX, TFLite, PyTorch, and AxonML models to HEF | 0.1.0 |

More formulae will be added as AutomataNexus tools are released publicly.

---

## Install

### NexusFoundry

```bash
brew install automatanexus/tap/nexusfoundry
```

Or if you've already tapped:

```bash
brew install nexusfoundry
```

#### Verify

```bash
nexusfoundry --version
nexusfoundry info --target hailo8
```

#### Quick compile

```bash
nexusfoundry compile model.onnx --target hailo8
```

---

## Update

```bash
brew update
brew upgrade nexusfoundry
```

## Uninstall

```bash
brew uninstall nexusfoundry
brew untap automatanexus/tap
```

---

## Adding New Formulae

This tap is the distribution point for all AutomataNexus public binaries. Future tools (AxonML CLI, NexusSentinel agent, etc.) will be added as new formulas under `Formula/`.

Each formula pulls SLSA-verified release binaries from the corresponding `-releases` repo on GitHub. No source code is distributed.

---

## About AutomataNexus

AutomataNexus builds AI infrastructure for edge deployment — model compilers, inference engines, and monitoring systems for Hailo NPU, NVIDIA Jetson, and custom hardware.

[GitHub](https://github.com/AutomataNexus) | [Contact](mailto:devops@automatanexus.com)
