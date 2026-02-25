class MlxServer < Formula
  desc "Local LLM inference server for Apple Silicon using MLX"
  homepage "https://github.com/panbanda/mlx-server"
  version "0.1.9"
  license "MIT OR Apache-2.0"

  depends_on :macos
  depends_on arch: :arm64
  depends_on "huggingface-cli"

  url "https://github.com/panbanda/mlx-server/releases/download/mlx-server-v0.1.9/mlx-server_0.1.9_aarch64-apple-darwin.tar.gz"
  sha256 "0169afd8e5b005fcf2b76afb9c6b26a7dcafcbe2db8dd4922690dd582c3bc740"

  def install
    bin.install "mlx-server"
  end

  test do
    system "#{bin}/mlx-server", "--help"
  end
end
