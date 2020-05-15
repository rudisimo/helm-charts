.PHONY: charts
charts:
	docker build --rm -t helm-charts .github/builder
	docker run --rm -v ${PWD}:/github/workspace -w /github/workspace \
		-e INPUT_OWNER=rudisimo -e INPUT_SLUG=helm-charts -e INPUT_URL=https://rudisimo.github.io/helm-charts \
		-e INPUT_KUBECTL=1.18.2 -e INPUT_HELM=3.2.1 -e INPUT_CT=3.0.0-rc.1 -e INPUT_CR=1.0.0-beta.1 \
		-e GITHUB_WORKSPACE=/github/workspace -e GITHUB_JOB -e GITHUB_REF -e GITHUB_SHA \
		-e GITHUB_REPOSITORY=rudisimo/helm-charts -e GITHUB_REPOSITORY_OWNER=rudisimo \
		-e GITHUB_RUN_ID -e GITHUB_RUN_NUMBER -e GITHUB_ACTOR -e GITHUB_WORKFLOW -e GITHUB_HEAD_REF \
		-e GITHUB_BASE_REF -e GITHUB_EVENT_NAME -e GITHUB_ACTION -e GITHUB_EVENT_PATH \
		helm-charts

.PHONY: docs
docs:
	docker build --rm -t helm-docs -f test/Dockerfile-docs .
	docker run --rm -v ${PWD}:/data -w /data helm-docs sh -exvf test/docs.sh
