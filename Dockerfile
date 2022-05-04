ARG version=alpine3.15
FROM httpd:${version}
COPY index.html /usr/local/apache2/htdocs/index.html