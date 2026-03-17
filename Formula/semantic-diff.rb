class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.2/semantic-diff-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "33160a04b3fe3343b2a9020d90d411ce34ce2c84cc0310e1151829584f36bb45"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.2/semantic-diff-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "a209f744eb3abc162e2893312604da1a1a06ab91cde7d4cae655c736736da4ad"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
