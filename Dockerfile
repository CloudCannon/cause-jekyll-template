FROM jekyll/builder as build
WORKDIR /tmp
COPY . /tmp

RUN jekyll build

FROM pierrezemb/gostatic

COPY --from=build /tmp/_site /srv/http
