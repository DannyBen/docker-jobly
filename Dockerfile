FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.4.5
WORKDIR /app
ENTRYPOINT ["jobly"]
