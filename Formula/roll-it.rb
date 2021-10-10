class RollIt < Formula
  desc "Automatically roll your AWS IAM access key and secret key"
  homepage "https://github.com/pckilgore/roll-it/wiki"
  url "https://github.com/pckilgore/roll-it/archive/refs/tags/v2.1.0.tar.gz"
  sha256 "cdad790d0a450ca22d26ac4471f45cb7d68d072d05b164f70df6c53106b2dcbd"
  license "MIT"

  depends_on "go" => :build


  def install
    system "go", "build", "-ldflags=-s -w", "-o", "#{bin}/rollit"
  end

  test do
    shell_output("#{bin}/rollit", 1)
  end
end
