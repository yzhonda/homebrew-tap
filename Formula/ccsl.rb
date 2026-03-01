class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/e7/84/2f3a2f1736449288ea85febd7b553fcbc9c4a74b2197481c1b9f898c2b5e/ccsl-1.0.0.tar.gz"
  sha256 "875a45e544b6576e5681d7ee6d51d8404c92492e34de22bdc4c5c595c5e749f3"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "ccsl", shell_output("#{bin}/ccsl --version")
  end
end
