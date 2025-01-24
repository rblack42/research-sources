.PHONY: docs
docs:
	cd sphinx && \
		make html && \
		cp -r _build/html/* ../docs

.PHONY: reqs
reqs:
	pip-compile && \
		pip install -r requirements.txt

