class KiloClaudeProxy < Formula
  include Language::Python::Virtualenv

  desc "Local OpenAI-compatible proxy that drives the Claude Code CLI"
  homepage "https://github.com/alankyshum/kilo-claude-proxy"
  url "https://github.com/alankyshum/kilo-claude-proxy/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "f26acff97d99922233731304b09aa9650996dc258daee971de50bfa40c44b879"
  license "MIT"
  head "https://github.com/alankyshum/kilo-claude-proxy.git", branch: "main"

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "kilo-claude-proxy 0.1.0", shell_output("#{bin}/kilo-claude-proxy --version")
  end
end
