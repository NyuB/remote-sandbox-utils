bash <(curl -sL https://get.graalvm.org/jdk) --to $HOME graalvm-ce-java17-22.3.1
export PATH="$HOME/graalvm-ce-java17-22.3.1/bin:$PATH"
export JAVA_HOME="$HOME/graalvm-ce-java17-22.3.1"
sudo apt-get install build-essential libz-dev zlib1g-dev

curl -fLo coursier https://github.com/coursier/launchers/raw/master/coursier && chmod +x coursier && ./coursier setup
