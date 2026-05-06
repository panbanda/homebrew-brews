class Higgs < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/higgs"
  version "1.2.0"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/higgs/releases/download/higgs-v1.2.0/higgs_1.2.0_aarch64-apple-darwin.tar.gz"
  sha256 "0c2e5ef1315f4be7031fb35dd3ef2d8dbadcf28773d8f8818a4894ff59f9f8a9"

  def install
    bin.install "higgs"
    bin.install "mlx.metallib"
  end

  test do
    system "#{bin}/higgs", "--help"
  end
end
