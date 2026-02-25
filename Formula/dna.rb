class Dna < Formula
  desc "Truth artifact management CLI with vector search for AI agents"
  homepage "https://github.com/panbanda/dna"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.5/dna_0.3.5_aarch64-apple-darwin.tar.gz"
      sha256 "507f91867ceff10b7b5b5372a7e33b5b90c3dc30365969cd918631cb2ea2e9fe"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.5/dna_0.3.5_x86_64-apple-darwin.tar.gz"
      sha256 "85304577e2aa37fb9136591531db6ef4d43e81ca3beb08db11ecca3b5e515ed0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.5/dna_0.3.5_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0abda1b8aff22898fcead7afde886e52ecd1b4129d9e4b5e2c4fcf95dce281ff"
    else
      url "https://github.com/panbanda/dna/releases/download/dna-v0.3.5/dna_0.3.5_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f40fcbdea746433ab81705adb14706484b7632535eaaafcb35f7ed3bb3cd770"
    end
  end

  def install
    bin.install "dna"
  end

  test do
    system "#{bin}/dna", "--help"
  end
end
