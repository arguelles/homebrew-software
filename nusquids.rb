# squids instalation formulae
# C. Arguelles (2016)

class NuSquids < Formula
  homepage "https://github.com/arguelles/nuSQuIDS"
  url "https://github.com/arguelles/nuSQuIDS/archive/0.1.tar.gz"

  depends_on "gsl"
  depends_on "squids"
  depends_on "hdf5"

  def install
    system "./configure"
    system "make","install"
  end

  test do
    system "true"
  end
end
