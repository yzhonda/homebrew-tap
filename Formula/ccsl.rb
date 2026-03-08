class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/57/89/57d80731fc06a97e3404eda57f85fd2be46c16b1ec6438726b6b480e465e/ccsl-1.0.3.tar.gz"
  sha256 "1a48742de3f9c5a0cf943adabaaf1c5a117c2b1d1cbefe7c0f9c4ca394345f67"
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
