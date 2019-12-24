FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.4.1
WORKDIR /app
ENTRYPOINT ["jobly"]
