class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.30.0/omen_4.30.0_aarch64-apple-darwin.tar.gz"
      sha256 "aadec6f8d720ac9796e5ff6b8c8e60159daa16a9ef620dbeccd932dc032d3f25"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.30.0/omen_4.30.0_x86_64-apple-darwin.tar.gz"
      sha256 "9fa5c1612379e8e19887d9e39de1862591516ed84cdb50589f269dfae9cbfbfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.30.0/omen_4.30.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "241c74893707da030bcdda43d401ccd89420ce2e40080031e58ab5ecc7d8c1f9"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.30.0/omen_4.30.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12acc59e5084c9b9263e1c5ef01678b060ffd9c91daa80fe01aab3c7ac2c72ac"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
