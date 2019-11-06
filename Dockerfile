FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.3.0
WORKDIR /app
ENTRYPOINT ["jobly"]
