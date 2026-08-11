class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.6.1"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "hf"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.6.1/higgs_1.6.1_aarch64-apple-darwin.tar.gz"
  sha256 "910be481770b23bf8202c1d9ca0baae513b83c0cde76dade50ee379b9e351ff5"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
