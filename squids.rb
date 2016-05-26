# squids instalation formulae
# C. Arguelles (2016)

class Squids < Formula
  homepage "https://github.com/jsalvado/SQuIDS"
  url "https://github.com/jsalvado/SQuIDS/archive/v1.1.tar.gz"

  depends_on "gsl"

  def install
    system "./config.sh","--prefix=#{prefix}"
    system "make","install"
  end

  test do
    system "true"
  end
end
