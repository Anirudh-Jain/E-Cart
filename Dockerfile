FROM ruby:3.1.1

WORKDIR /app
COPY . /app/

ENV BUNDLE_PATH /gems
RUN bundle install
RUN rake db:migrate

ENTRYPOINT [ "bundle", "exec" ]

CMD rails server -b 0.0.0.0
EXPOSE 3000
