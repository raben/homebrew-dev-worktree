class WtDev < Formula
  desc "Worktree x devcontainer parallel development environment"
  homepage "https://github.com/raben/wt-dev"
  url "https://github.com/raben/wt-dev/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "be572a035528ac71b6c7753f431c8d8bdfae54e10038a898fbd8f34a4e310669"
  license "MIT"
  head "https://github.com/raben/wt-dev.git", branch: "main"

  depends_on "jq"

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "#{bin}/wt-port-registry", "--help"
  end
end
