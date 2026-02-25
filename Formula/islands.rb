class Islands < Formula
  desc "Codebase indexing and semantic search using LEANN"
  homepage "https://github.com/panbanda/islands"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.5.0/islands_1.5.0_aarch64-apple-darwin.tar.gz"
      sha256 "fd8266926f836960152f4316b4251ccdb85180dead79c677d7578d14c1a60024"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.5.0/islands_1.5.0_x86_64-apple-darwin.tar.gz"
      sha256 "a926a911b8ea440d3db40188e2b8ad5cd7f0a7c07387ec5f2e95199f1db9276c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/islands/releases/download/islands-v1.5.0/islands_1.5.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cd8702210d70b100367867b5666bd26422d688741692e020684b7de92bb04ed"
    else
      url "https://github.com/panbanda/islands/releases/download/islands-v1.5.0/islands_1.5.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3aaba6e295e42dc19c81d7d88f81c73035167193202949e0a193cef9a33e095f"
    end
  end

  def install
    bin.install "islands"
  end

  test do
    system "#{bin}/islands", "--version"
  end
end
