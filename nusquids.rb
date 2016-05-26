# squids instalation formulae
# C. Arguelles (2016)

class Nusquids < Formula
  homepage "https://github.com/arguelles/nuSQuIDS"
  url "https://github.com/arguelles/nuSQuIDS/archive/0.1.tar.gz"
  sha256 "288f19896918f4a744e4e74fdbe73ad2dda70781ed19db2d230a7827f2159a67"

  depends_on "gsl"
  depends_on "squids"
  depends_on "hdf5"

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
