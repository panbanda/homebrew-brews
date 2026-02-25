class C4 < Formula
  desc "C4 architecture visualization tool"
  homepage "https://github.com/panbanda/c4"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.6/c4_0.1.6_aarch64-apple-darwin.tar.gz"
      sha256 "fb997a1830c0f4b230d98e126867962d913352c0319fa832f3cd66a9bf906eed"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.6/c4_0.1.6_x86_64-apple-darwin.tar.gz"
      sha256 "957e9a38c58e012a92c7ffa517f673150842bb9bae1de34ac48e2e64a32942b7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.6/c4_0.1.6_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39b9c53bcd1dd609b8e5d19e632f60b905395fe87d61a734d444e2a7414d302f"
    else
      url "https://github.com/panbanda/c4/releases/download/c4-v0.1.6/c4_0.1.6_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6b597fb4ca30a0ecbf93aa22d59d3b308073bdf9e694fdc10b481cd6abd93b58"
    end
  end

  def install
    bin.install "c4"
  end

  test do
    system "#{bin}/c4", "--version"
  end
end
