class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.3/semantic-diff-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "fc09af981b19bff0e3958031325369bbcdd85a403ba00d7e7bc9408ea67a7942"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.3/semantic-diff-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "504978cb6876cd58098debcfc2e02ce2f0f66893a22140331ba2bd7ab1ebea33"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
