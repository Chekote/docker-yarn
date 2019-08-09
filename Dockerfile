# chekote/yarn
FROM chekote/node:11.14.0

ENV DEBIAN_FRONTEND noninteractive

    # install yarn repo deps (TLS transport)
RUN apt-get update && \
    apt-get install -y --no-install-recommends apt-transport-https && \

    # configure yarn repo
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \

    # install yarn
    apt-get update && \
    apt-get install -y --no-install-recommends yarn && \

    # cleanup
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/apt/*

