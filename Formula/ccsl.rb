class Ccsl < Formula
  include Language::Python::Virtualenv

  desc "Enhanced status line for Claude Code"
  homepage "https://github.com/usedhonda/statusline"
  url "https://files.pythonhosted.org/packages/ae/a4/395255553ac4a6593b72152f037103e9f291221bce0c1061f6272546cf0a/ccsl-1.0.2.tar.gz"
  sha256 "a20fe4b7040b5fb24062991dbe3ba3f4b5949d4e579ca5a6f3824a2de84abef7"
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
