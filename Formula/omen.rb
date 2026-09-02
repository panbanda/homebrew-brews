class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.28.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.3/omen_4.28.3_aarch64-apple-darwin.tar.gz"
      sha256 "7f885778354971c0aaf6f6b5b8963f0b6393e44867210edbef404d366a1c30ff"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.3/omen_4.28.3_x86_64-apple-darwin.tar.gz"
      sha256 "a2f6182efb0a85d97909f72ced022fa5722ff695c32bef3c71def096e1766c15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.3/omen_4.28.3_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d3247c0911a8b5083e05049d8d10a6b68f37d5d855542bc71ee6ba453ad50da"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.3/omen_4.28.3_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3723547fa2540f490ad4b9002abf112844afb3b42d989e6d7c50edfb880d235c"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
