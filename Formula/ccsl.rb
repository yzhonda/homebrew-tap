class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/b9/be/a17383c839ad56fe44fe8144fc2b1c5442db96e8a816369f6e8a1fffa230/ccsl-1.0.1.tar.gz"
  sha256 "fa66a5e92768ce894a7945171446724d49e9d8618c251d1e08a84357dcf44692"
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
