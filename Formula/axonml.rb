class Axonml < Formula
  desc "PyTorch-equivalent ML framework in pure Rust — training, inference, CUDA GPU"
  homepage "https://github.com/AutomataNexus/AxonML"
  version "0.4.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AutomataNexus/AxonML/releases/download/v0.4.2/axonml-cli-v0.4.2-macos-aarch64.tar.gz"
      sha256 "3e1f567f9750bfb4a0da5a9c48e41bfe03ed8aa832ad792c72fb05694b64b604"
    else
      url "https://github.com/AutomataNexus/AxonML/releases/download/v0.4.2/axonml-cli-v0.4.2-macos-x86_64.tar.gz"
      sha256 "68c52c34b751f3e09dae6450f32959bf7d090133c0e91f49991b1bc8371f0546"
    end
  end

  on_linux do
    url "https://github.com/AutomataNexus/AxonML/releases/download/v0.4.2/axonml-cli-v0.4.2-linux-x86_64.tar.gz"
    sha256 "d89da4052ef20dca18096167ab310b31a2471ce13364ca7a2c6001a4d42bc719"
  end

  def install
    bin.install Dir["axonml*"].select { |f| File.executable?(f) && !f.end_with?(".tar.gz") }
  end

  test do
    system "#{bin}/axonml-cli", "--version"
  end
end
