class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.4.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.4.0/higgs_1.4.0_aarch64-apple-darwin.tar.gz"
  sha256 "a089cf78a34fda168a669a3aee68bff7c181cd8d314a1b4f92851a2f47a6a737"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
