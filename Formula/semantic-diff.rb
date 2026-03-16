class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.4.0/semantic-diff-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ad1c702062ee07795064a73f83a61d3eb3bceddff957cc6b45d6557b03c35640"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.4.0/semantic-diff-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "8ab4aa829c8cc02e64c8ec5b1b711a150f744fd8b1b7c2025c344e3a2759897f"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
