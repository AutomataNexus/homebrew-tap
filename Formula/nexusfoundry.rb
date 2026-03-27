class Nexusfoundry < Formula
  desc "Pure Rust compiler for Hailo NPU hardware — compiles models to HEF"
  homepage "https://github.com/AutomataNexus/nexusfoundry-releases"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AutomataNexus/nexusfoundry-releases/releases/download/v0.1.0/nexusfoundry-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8c60c204f416a4504bc8fb02cbabe1dbc8967a15bd2ae539b43a5224154b0366"
    else
      url "https://github.com/AutomataNexus/nexusfoundry-releases/releases/download/v0.1.0/nexusfoundry-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "1b7b5e91c5049fc5cc7b6199a94c22bc57c0b16f406c724e77ce5e981ec6b245"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AutomataNexus/nexusfoundry-releases/releases/download/v0.1.0/nexusfoundry-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "267eba67555ad22f03770941af4d6bc1a5ed81cc6ef730fd2a92a0156951a162"
    else
      url "https://github.com/AutomataNexus/nexusfoundry-releases/releases/download/v0.1.0/nexusfoundry-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7be5985a68721ba9c9ba4accf714443ea883332e69d53865d8e57706ef084f7"
    end
  end

  def install
    bin.install "nexusfoundry"
  end

  test do
    system "#{bin}/nexusfoundry", "--version"
  end
end
