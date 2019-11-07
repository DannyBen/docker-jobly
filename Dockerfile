FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.4.0
WORKDIR /app
ENTRYPOINT ["jobly"]
