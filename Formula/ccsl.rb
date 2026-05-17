class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/yzhonda/statusline"
  url "https://files.pythonhosted.org/packages/3c/a3/52a0dbf1dd780a94c4a46fa39050b51633525e47961a1e6545caf96ab0e0/ccsl-1.0.11.tar.gz"
  sha256 "e7924516912bfdd42a414dc8f09e2d83c2e560f4b838fb9d886194e5bd25f9e4"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  def caveats
    <<~EOS
      Run once to configure Claude Code:
        ccsl --setup
    EOS
  end

  test do
    assert_match "ccsl", shell_output("#{bin}/ccsl --version")
  end
end
