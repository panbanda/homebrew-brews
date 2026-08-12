class Omen < Formula
  desc "Multi-language code analysis CLI"
  homepage "https://github.com/panbanda/omen"
  version "4.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.0/omen_4.28.0_aarch64-apple-darwin.tar.gz"
      sha256 "43cc227b2effba20690669f1fc2bbaf6c5bae42c40bd09ee4549df9c3021e0ab"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.0/omen_4.28.0_x86_64-apple-darwin.tar.gz"
      sha256 "acadefc81f4b88b27ab2ebfed5836cf7da4703bab55c6540c03fb8c3be0c2a4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.0/omen_4.28.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9d84d268c67999a247fc3300482de96919fc9e58059feb659f950cf65a7616cb"
    else
      url "https://github.com/panbanda/omen/releases/download/omen-v4.28.0/omen_4.28.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d753847de2ab2ea3331c46ca3543c41f23f419b231a35447fbd37ff070f6cc8b"
    end
  end

  def install
    bin.install "omen"
  end

  test do
    system "#{bin}/omen", "--version"
  end
end
