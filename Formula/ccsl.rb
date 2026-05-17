class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/yzhonda/statusline"
  url "https://files.pythonhosted.org/packages/1d/6e/4d84b4e8e291d8670be4f5ab9d574ac91beb105ba2a7780b0e55db481aed/ccsl-1.0.12.tar.gz"
  sha256 "705ba2ab1b064935c20ab2ae4810dd9119c88340e77cc78386a429f40bac6abf"
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
