class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.5.1/semantic-diff-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "5f47805618e032c359e1442628dd043f5d1111cfa2c3827d3a8f50e980fa4354"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.5.1/semantic-diff-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "7ef5f8943d0eb0d17c7002fb654c841ac45ef120b40b442cb268dd11bc36e832"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
