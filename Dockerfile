FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.5.6
WORKDIR /app
ENTRYPOINT ["jobly"]
