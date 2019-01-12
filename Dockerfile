FROM microsoft/dotnet:2.2-sdk

ENV NODE_VERSION 10.15.0
ENV NODE_DOWNLOAD_SHA f0b4ff9a74cbc0106bbf3ee7715f970101ac5b1bbe814404d7a0673d1da9f674
COPY yarn-pubkey.gpg .
RUN curl -SL "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz" --output nodejs.tar.gz \
    && echo "$NODE_DOWNLOAD_SHA nodejs.tar.gz" | sha256sum -c - \
    && tar -xzf "nodejs.tar.gz" -C /usr/local --strip-components=1 \
    && rm nodejs.tar.gz \
    && ln -s /usr/local/bin/node /usr/local/bin/nodejs \
    && apt-get update \
    && apt-get install --no-install-recommends -y apt-transport-https \
    && apt-key add yarn-pubkey.gpg \
    && rm yarn-pubkey.gpg \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && apt-get update \
    && apt-get install --no-install-recommends -y rsync yarn \
    && rm -rf /var/lib/apt/lists/*