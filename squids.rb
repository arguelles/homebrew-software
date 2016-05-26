# squids instalation formulae
# C. Arguelles (2016)

class Squids < Formula
  homepage "https://github.com/jsalvado/SQuIDS"
  url "https://github.com/jsalvado/SQuIDS/archive/v1.1.tar.gz"
  sha256 "8f63ab88bc6ae8a6cf8f36d82c52e6c51718f9443659659533e1d49381294c63"

  depends_on "gsl"

  def install
    system "mkdir","-p","#{prefix}"
    system "mkdir","-p","#{prefix}/lib"
    system "mkdir","-p","#{prefix}/includes"
    system "./config.sh","--prefix=#{prefix}"
    system "make","install"
  end

  test do
    system "true"
  end
end
