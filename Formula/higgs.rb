class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "0.1.15"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v0.1.15/higgs_0.1.15_aarch64-apple-darwin.tar.gz"
  sha256 "875d7ddc0aa7d616c0cf441dd85c62e0b9913ea5b32b7ac17d2afaf91508de5a"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
