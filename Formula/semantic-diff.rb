class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.2/semantic-diff-v0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "29096cfc32e630aba7ec6d9ec53ddb8754aaa29318639c899f3ec801e7e4d0b1"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.2/semantic-diff-v0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "a202cae6dee2941947a2806a5df0b1a701b62f4d5025b6e0c68f09b618a39b21"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
