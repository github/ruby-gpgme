FROM ruby:2.4.0
RUN useradd -ms /bin/bash admin
COPY . /home/admin/build
RUN chown -R admin /home/admin/build
USER admin
WORKDIR /home/admin/build
RUN bundle install

CMD bundle exec rake
