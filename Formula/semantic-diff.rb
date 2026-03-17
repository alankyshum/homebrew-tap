class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.0/semantic-diff-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "40dbb68891f5cbb055cffc8ffb5c811614af912138d02452b1292df09b7d0c99"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.0/semantic-diff-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "1bc90d9d301ab1e3cc154f9c8de7df1ac108c56a70bc7c8982035de0c8b8ac8b"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
