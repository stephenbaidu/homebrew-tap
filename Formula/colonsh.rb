class Colonsh < Formula
  desc "A command-line alias manager and utility tool written in Go."
  homepage "https://github.com/colonsh/colonsh" 
  
  url "https://github.com/colonsh/colonsh/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "64ffe575adb6f711950ed221caf0a3bb289fa92dafc69e4dbe6ebcf3e4ee783d" 

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