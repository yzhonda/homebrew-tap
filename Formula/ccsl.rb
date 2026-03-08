class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/d4/4d/a12a972d1fa3daa092971a9a4da3be1e70aa4e925f93f25420dbf74d3f9c/ccsl-1.0.4.tar.gz"
  sha256 "4d36c7843548e31fb09f62df830d7c942be3fa1a0e7fa9482a800cadc056d6c8"
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
