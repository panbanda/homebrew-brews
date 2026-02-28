class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "0.1.18"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v0.1.18/higgs_0.1.18_aarch64-apple-darwin.tar.gz"
  sha256 "e66784834098f704cce8f75d44b2262283e1da4691fac5d0945d7f67e8d94593"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
