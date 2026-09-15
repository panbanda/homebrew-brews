class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.29.0/omen_4.29.0_aarch64-apple-darwin.tar.gz"
      sha256 "22928c762d3b46df660034837328cb65a61becbdd15cc7463c13eab652aed98f"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.29.0/omen_4.29.0_x86_64-apple-darwin.tar.gz"
      sha256 "73c91a488a16150a1c881840dffd3ff03db9c69d53098d46fb57514a81ba9b29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.29.0/omen_4.29.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ddccbdfe2c6f2e9f81ad7ecdd089fe1d67ffbe930e27a8e5526d9e3bf683bf8e"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.29.0/omen_4.29.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3893cf8e58e040268727a489688415831c5b3723e11b32fcd4464c950e629c41"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
