.PHONY: docs
docs:
	cd sphinx && \
		make html && \
		cp -r _build/html/* ../docs
