FROM centurylink/ruby-base:2.1.2
MAINTAINER CenturyLink

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y libmysql-ruby libmysqlclient-dev ca-certificates

ADD . /tmp
ADD ./config/production.sphinx.conf /usr/local/etc/sphinx.conf
WORKDIR /tmp
RUN bundle install --without development test

CMD export RAILS_ENV=production && \
  bundle exec rake db:create && \
  bundle exec rake db:schema:load && \
  bundle exec rake db:seed && \
  bundle exec INDEX_ONLY=true rake ts:index && \
  bundle exec rails s -p 4000 -e production
