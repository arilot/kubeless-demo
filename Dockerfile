FROM alpine
ENV KUBELESS_RELEASE=v1.0.1
ENV KUBELESS_RELEASE_URL=https://github.com/kubeless/kubeless/releases/download/${KUBELESS_RELEASE}/kubeless_linux-amd64.zip

MAINTAINER Michael Venezia <mvenezia@gmail.com>

RUN wget ${KUBELESS_RELEASE_URL}
RUN unzip kubeless_linux-amd64.zip
RUN mv bundles/kubeless_linux-amd64/kubeless /kubeless
RUN chmod a+x /kubeless

FROM alpine
RUN apk add --no-cache curl
COPY --from=0 /kubeless /kubeless
