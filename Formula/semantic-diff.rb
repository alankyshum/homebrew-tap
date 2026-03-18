class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.8.0/semantic-diff-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "6831016f6141ffa29690e22c4be3b8c0ff6a2f1192a26d55c11c5e8b58a9b8cb"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.8.0/semantic-diff-v0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "9cb6e6445b4dd35aeec5e97ea202664d92e9eea2920992c26d36f552e9b0b74d"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
