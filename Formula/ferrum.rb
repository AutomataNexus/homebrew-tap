class Ferrum < Formula
  desc "Component-based email framework for Rust — type-safe templates, cross-client rendering"
  homepage "https://github.com/AutomataNexus/FerrumEmail"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AutomataNexus/FerrumEmail/releases/download/v0.1.0/ferrum-aarch64-apple-darwin.tar.gz"
      sha256 "4d92c2fce8f1173f12fdae1593e7472befd00c022ab09578ae2c88d1903b8627"
    else
      url "https://github.com/AutomataNexus/FerrumEmail/releases/download/v0.1.0/ferrum-x86_64-apple-darwin.tar.gz"
      sha256 "10dcf093273dd3d219737ef48121436cdc91143a4e38f6303296b3a1e972a8d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AutomataNexus/FerrumEmail/releases/download/v0.1.0/ferrum-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0811c6a285a50a7fd49fdb3baf2dec16202571a8418985a881d6dd3ac3ac986e"
    else
      url "https://github.com/AutomataNexus/FerrumEmail/releases/download/v0.1.0/ferrum-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb5b16b4ee833fc7ee0fa93849c83e7f41b68c81f1be593bb47063207b8c4105"
    end
  end

  def install
    bin.install Dir["ferrum*"].select { |f| File.executable?(f) && !f.end_with?(".tar.gz") }
  end

  test do
    system "#{bin}/ferrum", "--version"
  end
end
