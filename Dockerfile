FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.2.2
WORKDIR /app
ENTRYPOINT ["jobly"]
