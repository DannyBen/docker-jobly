FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.5.11
WORKDIR /app
ENTRYPOINT ["jobly"]
