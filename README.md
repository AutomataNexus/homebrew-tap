# AutomataNexus Homebrew Tap

Homebrew formulae for [AutomataNexus](https://github.com/AutomataNexus) tools.

## Install NexusFoundry

```bash
brew tap automatanexus/tap
brew install nexusfoundry
```

## Verify

```bash
nexusfoundry --version
nexusfoundry info --target hailo8
```

## Update

```bash
brew update
brew upgrade nexusfoundry
```

## About NexusFoundry

Pure Rust compiler for Hailo NPU hardware. Compiles ONNX, TFLite, PyTorch, and AxonML models directly to Hailo Executable Format (HEF) for Hailo-8, Hailo-8L, and Hailo-10H accelerators.

For more information, see the [NexusFoundry releases page](https://github.com/AutomataNexus/nexusfoundry-releases).
