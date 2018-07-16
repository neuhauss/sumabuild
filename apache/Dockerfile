# Container used to test Content Management feature
#
# VERSION               1.0.0

FROM opensuse


ARG repo
ARG cert

RUN echo "$cert" > /etc/pki/trust/anchors/RHN-ORG-TRUSTED-SSL-CERT.pem
RUN update-ca-certificates
RUN echo "$repo" > /etc/zypp/repos.d/susemanager:dockerbuild.repo

### End: These lines required for use with {productname}

# Add the package 
ADD add_packages.sh /root/add_packages.sh

# Run the package script
RUN Wget https://github.com/neuhauss/sumabuild/edit/master/apache/add_packages.sh
RUN /root/add_packages.sh

ADD pub.conf /etc/apache2/conf.d/pub.conf
RUN mkdir -p /srv/www/htdocs/pub/
ADD index.html /srv/www/htdocs/pub/index.html

CMD /usr/sbin/start_apache2 -DFOREGROUND -k start

