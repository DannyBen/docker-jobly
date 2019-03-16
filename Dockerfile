FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.2.0
WORKDIR /app
ENTRYPOINT ["jobly"]
