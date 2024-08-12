.PHONY: release clean

release: clean check
	@mkdir -p _output
	@tar -czf _output/kubectl-wait-job.tar.gz kubectl-wait-job LICENSE
	@sha256sum _output/kubectl-wait-job.tar.gz > _output/kubectl-wait-job.tar.gz.sha256
	@cat _output/kubectl-wait-job.tar.gz.sha256

clean:
	@rm -rf _output

check:
	@shellcheck kubectl-wait-job