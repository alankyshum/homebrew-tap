class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.9.0/semantic-diff-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "adf96e0c872f4d8b1bbbbd10aa042d253a11063450a75d6ddc24ea8b11a501bd"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.9.0/semantic-diff-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "42ea52ecc4c60415e2d62afc4f203c33d87e7796911a441693b9485910dcaf0b"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
