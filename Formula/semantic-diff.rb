class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.5.0/semantic-diff-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "47340ce913474abaae9fc6d43bab7391d0e6c11e3080ea96244c792549401e50"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.5.0/semantic-diff-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e496482814672a4b87c45299076ea88f3e55f4a0d236e9db5ea26ab32dacd545"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
