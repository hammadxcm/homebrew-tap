class Clipr < Formula
  desc "A fast, git-friendly URL shortener"
  homepage "https://github.com/hammadxcm/clipr"
  url "https://registry.npmjs.org/clipr-cli/-/clipr-cli-0.0.16.tgz"
  sha256 "081fcf984d9ba1295557c8c2a140117cc11e5621"
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
