FROM 16.13.1-alpine3.13

RUN apk --update --no-cache add nodejs npm jq curl bash git docker && \
	npm install -g yarn && \
	yarn global add esbuild && \
	yarn global add projen
	
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
