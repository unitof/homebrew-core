require "language/node"

class VercelCli < Formula
  desc "Command-line interface for Vercel"
  homepage "https://vercel.com/home"
  url "https://registry.npmjs.org/vercel/-/vercel-21.0.1.tgz"
  sha256 "ff36b5ea66f741942e0f74fc1222f73f903b638fefc991fe68a25eefbd7f3a61"
  license "Apache-2.0"

  livecheck do
    url :stable
  end

  bottle do
    cellar :any_skip_relocation
    rebuild 1
    sha256 "a33ec53e45f2ef38fe23a0a2e66205783c4e9d6a037d4b5de38bac3b8a1448e8" => :catalina
    sha256 "831da3bb99d51a4a0e566bc7f0494dda30be6b8f16170f97afc36a51c843eda7" => :mojave
    sha256 "a52be7278a1492daa225ecd47b7326f41f60ea2070397903bc3ef09f7f6aec1a" => :high_sierra
  end

  depends_on "node"

  def install
    rm Dir["dist/{*.exe,xsel}"]
    inreplace "dist/index.js", "exports.default = getUpdateCommand",
                               "exports.default = async()=>'brew upgrade vercel-cli'"
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/vercel", "init", "jekyll"
    assert_predicate testpath/"jekyll/_config.yml", :exist?, "_config.yml must exist"
    assert_predicate testpath/"jekyll/README.md", :exist?, "README.md must exist"
  end
end
