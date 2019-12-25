FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.4.2
WORKDIR /app
ENTRYPOINT ["jobly"]
