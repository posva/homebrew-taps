require "formula"

class Catimg < Formula
  homepage "https://github.com/posva/catimg"
  url "https://github.com/posva/catimg/archive/2.1.tar.gz"
  sha256 "7c1fbdf9b0e6f3a1513662db6e5a1ade659762cadf0c407f1dbcc70e5cfe0027"

  depends_on "cmake" => :build

  head do
    url "https://github.com/posva/catimg.git"
  end

  def install
    system "cmake", "-D", "CMAKE_BUILD_TYPE=Release", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "#{bin}/catimg", "-h"
  end
end
