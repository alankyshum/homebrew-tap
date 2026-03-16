class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.6.0/semantic-diff-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "7391400b2b82e15280045226bf391e2c116c9cf346243f3dbd72498eb0b60e4d"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.6.0/semantic-diff-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "b66bce4ff4b0ec950af5401c4b95b5f3c37bdd2749912d8c8a98a677ff4d847b"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
