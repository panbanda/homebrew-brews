class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.1/omen_4.28.1_aarch64-apple-darwin.tar.gz"
      sha256 "cb2210b59bfc31cb98f9a917b4b5abdba0ce2e32d24679f667c8ab928c5f8598"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.1/omen_4.28.1_x86_64-apple-darwin.tar.gz"
      sha256 "8c849f87dadc3624cf5267336707772ec200b6791543446ce755e684f997fd4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.1/omen_4.28.1_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ce5fc2ab8bb665eab511b195e84850cdfd1259f3f1d32bf4e65c3fb679fcf770"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.1/omen_4.28.1_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "37b59621a3230cd7fd71283672859678b3eba921cb994c81e66dea054159ab90"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
