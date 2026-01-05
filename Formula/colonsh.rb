class Colonsh < Formula
  desc "A command-line alias manager and utility tool written in Go."
  homepage "https://github.com/stephenbaidu/colonsh" 
  
  url "https://github.com/stephenbaidu/colonsh/archive/refs/tags/v0.0.4.tar.gz"
  sha256 "a050382204ecd5e97d4716277714d19853ba74412c386fb0865a6acb1964898b" 

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