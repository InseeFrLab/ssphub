# Install recent go version
GO_VERSION="1.18.4"
wget https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz && \
    sudo rm -rf /usr/local/go && \
    sudo tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz

PATH="/usr/local/go/bin:${PATH}"

HUGO_VERSION="0.97.3" 
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-64bit.deb && \
    sudo apt install "./hugo_extended_${HUGO_VERSION}_Linux-64bit.deb" && \
    rm -f hugo_extended_${HUGO_VERSION}_Linux-64bit.deb


