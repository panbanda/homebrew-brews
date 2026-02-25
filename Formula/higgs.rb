class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "0.1.11"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v0.1.11/higgs_0.1.11_aarch64-apple-darwin.tar.gz"
  sha256 "79c9ac46e8a4b47d82597d3e26aa89436a2158369915c529d6bd28f568c0e083"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
