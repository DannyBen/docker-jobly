FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.5.7
WORKDIR /app
ENTRYPOINT ["jobly"]
