class SemanticDiff < Formula
  desc "Terminal diff viewer with AI-powered semantic grouping via Claude CLI"
  homepage "https://github.com/alankyshum/semantic-diff"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.3.0/semantic-diff-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "ce5c524396cc33b90e412566b5238ab82857959be86f976c483d7e3f78ef01b5"
    elsif Hardware::CPU.intel?
      url "https://github.com/alankyshum/semantic-diff/releases/download/v0.3.0/semantic-diff-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "f458b8c957bd56d36ed4864cdbecc1fc33edb6d38cbb5092b5317ad01dbc80ab"
    end
  end

  def install
    bin.install "semantic-diff"
  end

  test do
    assert_match "semantic-diff", shell_output("#{bin}/semantic-diff --help")
  end
end
