class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.1/semantic-diff-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "4249e934a1e217c0bc99c649b63f5a287a9f35530c99c30bfd6dab7758a65977"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.7.1/semantic-diff-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "8a4d1230100b5a22ac67032b277f780335553e4bf9996336cdacb096d098774b"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
