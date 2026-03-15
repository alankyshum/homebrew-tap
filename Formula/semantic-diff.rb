class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.0/semantic-diff-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "65e0db95ec273ceb443705aa232c4f8313783b4521865213d721b4a0d924d119"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.0/semantic-diff-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "a42afe7637b33bc69b34ba0f01bdffe63ccbd2cdfb3a1865eb6e693c43afd024"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
