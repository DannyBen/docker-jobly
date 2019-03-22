FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.2.6
WORKDIR /app
ENTRYPOINT ["jobly"]
