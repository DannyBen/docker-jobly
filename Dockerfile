FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.2.5
WORKDIR /app
ENTRYPOINT ["jobly"]
