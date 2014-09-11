FROM centurylink/ruby-base:2.1.2
MAINTAINER CenturyLink

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y libmysql-ruby libmysqlclient-dev libsqlite3-dev

ADD . /tmp
WORKDIR /tmp
RUN bundle install
RUN export SECRET_KEY_BASE=`rake secret`

CMD export RAILS_ENV=production && \ 
  bundle exec rake db:create && \
  bundle exec rake db:schema:load && \
  bundle exec rake db:seed && \
  bundle exec rails s
