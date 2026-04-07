class Clipr < Formula
  desc "A fast, git-friendly URL shortener"
  homepage "https://github.com/hammadxcm/clipr"
  url "https://registry.npmjs.org/clipr-cli/-/clipr-cli-0.0.14.tgz"
  sha256 "39b48219f495415a37033c74fa4f2fee1e24ed17"
  license "MIT"
  depends_on "node@22"
  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["\#{libexec}/bin/*"]
  end
  test do
    assert_match version.to_s, shell_output("\#{bin}/clipr --version")
  end
end
