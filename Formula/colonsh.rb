class Colonsh < Formula
  desc "A command-line alias manager and utility tool written in Go."
  homepage "https://github.com/stephenbaidu/colonsh" 
  
  url "https://github.com/stephenbaidu/colonsh/archive/refs/tags/v0.0.2.tar.gz"
  sha256 "ce873141b4691b3db0e3c6221d01c64fcc3d44bae423811164b6c7c99b2dd4dd" 

  license "MIT"
  
  depends_on "go" => :build

  def install
    system "go", "build", 
           "-mod=mod", 
           "-o", bin/"colonsh", 
           "."                  
  end

  test do
    assert_match "Welcome to colonsh!", shell_output("#{bin}/colonsh")
  end
end