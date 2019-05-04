class Mediumctl < Formula
  desc 'CLI tool for publishing an article to Medium'
  homepage 'https://github.com/moutend/mediumctl'
  version 'v0.4.1'

  if Hardware::CPU.is_64_bit?
    @@binname = 'mediumctl_darwin_amd64_v0.4.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.1/' << @@binname
    sha256 '50dc5d9b15f982a2da10e3e38b45e5f1e9825a598304ecce09d6617761c415a0'
  else
    @@binname = 'mediumctl_darwin_386_v0.4.1'
    url 'https://github.com/moutend/mediumctl/releases/download/v0.4.1/' << @@binname
    sha256 'd8d0b7929b0d22e0f472b4e966dc0fe3db180574709d76431e14838baed95696'
  end

  def install
    mv @@binname, 'mediumctl'
    bin.install 'mediumctl'
  end

  test do
    system 'false'
  end
end
