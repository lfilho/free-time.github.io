FROM noonat/rbenv-nodenv

ENV RUBY_VERSION=2.2.4 NODE_VERSION=5.3.0

RUN rbenv install $RUBY_VERSION && \
    CONFIGURE_OPTS="--disable-install-doc" rbenv global $RUBY_VERSION && \
    gem install bundler

RUN nodenv install $NODE_VERSION && \
    nodenv global $NODE_VERSION && \
    nodenv rehash

RUN gem install jekyll jekyll-paginate sass && \
    npm install --global gulp freetime-cli

CMD ["freetime"]
