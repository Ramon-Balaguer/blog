FROM mcr.microsoft.com/devcontainers/jekyll:2.1.1
COPY / /site
WORKDIR /site
RUN bundle install
EXPOSE 4000
CMD ["jekyll", "serve"] 

# docker run -it -p 4000:4000  $(docker build -q .)