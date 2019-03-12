FROM dannyben/alpine-ruby
RUN gem install jobly -v 0.1.3
WORKDIR /app
COPY app .
