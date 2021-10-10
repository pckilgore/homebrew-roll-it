class RollIt < Formula
  desc "Automatically roll your AWS IAM access key and secret key"
  homepage "https://github.com/pckilgore/roll-it/wiki"
  url "https://github.com/pckilgore/roll-it/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "cdad790d0a450ca22d26ac4471f45cb7d68d072d05b164f70df6c53106b2dcbd"
  license "MIT"

  bottle do
    root_url "https://github.com/pckilgore/homebrew-roll-it/releases/download/roll-it-2.1.0"
    sha256 cellar: :any_skip_relocation, arm64_big_sur: "1b2a78e2d8e7c6396a9ffc67d1d794e6910e7c6263dcd1126e57b48b0864845a"
    sha256 cellar: :any_skip_relocation, big_sur:       "017a5f2977d15c98c488d22268928745e554eb5aa695691d379d4379bf0af10f"
    sha256 cellar: :any_skip_relocation, catalina:      "fe50d52f0712032d6ad293896c36680c0ca1543ac03ccc06c9a9f6c6e0764053"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5429f76cc03ece8b280af5cd1161e8f6ea656bb9fd8973f9f770b6f9686e0454"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-ldflags=-s -w", "-o", "#{bin}/rollit"
  end

  test do
    shell_output("#{bin}/rollit", 1)
  end
end
