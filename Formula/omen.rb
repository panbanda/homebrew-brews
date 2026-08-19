class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.28.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.2/omen_4.28.2_aarch64-apple-darwin.tar.gz"
      sha256 "0daff5a200b84237b1647f6f2261217d4df6edf7ba568ea0dc039b7980db7346"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.2/omen_4.28.2_x86_64-apple-darwin.tar.gz"
      sha256 "80be1c9185dd57db302a16896b68e124ce73c574483beeeb941abcf9b29f4a67"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.2/omen_4.28.2_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e23c33a35d7554fa95f2924f6e7816a0c48a5264ba397f81204e0d2c3f23c9e3"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.2/omen_4.28.2_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5503d53d7bee2bde3ef1dd852b17e537ed72617f75eda5aba971cd81fbe4b45e"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
