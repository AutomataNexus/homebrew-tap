class Nexussentinel < Formula
  desc "Facility health assessment for edge deployment — MLP autoencoder + severity classification"
  homepage "https://github.com/AutomataNexus/NexusSentinel"
  version "0.2.0"
  license :cannot_represent

  on_linux do
    url "https://github.com/AutomataNexus/NexusSentinel/releases/download/v0.2.0/nexus-sentinel-0.2.0-linux-amd64.tar.gz"
    sha256 "6a59a89b01dd92193ec7668e4c8ec9ed347429efb5999ce558d751089ae6d65a"
  end

  def install
    bin.install Dir["nexus-sentinel*"].select { |f| File.executable?(f) && !f.end_with?(".tar.gz") }
  end

  test do
    system "#{bin}/nexus-sentinel-inference-0.2.0-linux-amd64", "--help"
  end
end
