FROM jekyll/jekyll:4.1.0

WORKDIR /blog

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle install

COPY . .

CMD bundle exec jekyll serve --livereload --host 0.0.0.0