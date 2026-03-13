class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.1.0/semantic-diff-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8f0b2a2a5124e3ffc4515a528f59066c56441b51807e2d1357d70041aa28a113"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.1.0/semantic-diff-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "7cff6e966e27698187976319ce34bc0135991e72460448ea2eef63efe2d33e39"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
