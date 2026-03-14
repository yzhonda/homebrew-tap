class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/49/94/daaad21799a2ec8c30cb117d52a0e1e58019f8765db7fef8ab384a3e44b6/ccsl-1.0.5.tar.gz"
  sha256 "7ee5271ef11ac326fde0142fcbb2c4e135964be67e132587c9eae391310934a3"
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
