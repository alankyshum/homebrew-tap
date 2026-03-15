class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.1/semantic-diff-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "8c84b18aa0f3d264383d578106b184a525ed753d9c0a626eb0f3dd608206cc0d"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.2.1/semantic-diff-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "ad9ab530a595e28b27cd7b241f885a577477b35c9a291ad21880a30f740047b3"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
