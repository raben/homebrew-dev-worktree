class WtDev < Formula
  desc "Isolated parallel development environments with worktree + devcontainer"
  homepage "https://github.com/raben/wt-dev"
  url "https://github.com/raben/wt-dev/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "3360f364c71c0a41c69acbcf84583ab7be7d2cb178e83dd939311ba242194f96"
  license "MIT"
  head "https://github.com/raben/wt-dev.git", branch: "main"

  depends_on "jq"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/dev", "--version"
  end
end
