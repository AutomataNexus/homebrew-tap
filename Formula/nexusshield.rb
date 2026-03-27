class Nexusshield < Formula
  desc "Adaptive zero-trust security gateway + real-time endpoint protection engine"
  homepage "https://github.com/AutomataNexus/NexusShield"
  version "0.4.3"
  license :cannot_represent

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/AutomataNexus/NexusShield/releases/download/v0.4.3/nexus-shield-v0.4.3-linux-x86_64"
      sha256 "7b048de439a3ed9fe56ae7683d4e2ee54ec4df208bd9aeb8d3d52da94ed1768d"
    end
  end

  def install
    if OS.linux?
      bin.install "nexus-shield-v0.4.3-linux-x86_64" => "nexus-shield"
    end
  end

  test do
    system "#{bin}/nexus-shield", "--version"
  end
end
