FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.5.9
WORKDIR /app
ENTRYPOINT ["jobly"]
