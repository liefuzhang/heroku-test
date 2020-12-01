docker image build -t identitytest . -f Dockerfile
docker tag identitytest registry.heroku.com/my-identitytest/web
docker push registry.heroku.com/my-identitytest/web
heroku container:release web -a my-identitytest
