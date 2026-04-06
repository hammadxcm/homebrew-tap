class Clipr < Formula
  desc "A fast, git-friendly URL shortener"
  homepage "https://github.com/hammadxcm/clipr"
  url "https://registry.npmjs.org/clipr-cli/-/clipr-cli-0.0.13.tgz"
  sha256 "ebc98775ec37768ee4c680d87cd4c8cfece6fcc2"
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
