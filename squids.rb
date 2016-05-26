# squids instalation formulae
# C. Arguelles (2016)

class Squids < Formula
  homepage "https://github.com/jsalvado/SQuIDS"
  url "https://github.com/jsalvado/SQuIDS/archive/v1.1.tar.gz"
  md5 "bfbe306039ccc52bb81586a1c48274eb"

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
