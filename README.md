# kubectl-wait-job

A kubectl plugin to wait for a job to complete or fail.

## Purpose

Kubectl provides a way to wait for a single condition, but when running a job, you often want to wait for one two conditions: `Complete` or `Failed`.

This plugin provides a specialized wait command, specific to jobs, that waits for both conditions in parallel, and depending on which condition is met, reports the outcome of the job.

## Installation

```
kubectl krew install wait-job
```

## Usage

```
Usage: kubectl wait-job [ARGS] [OPTIONS]

This plugin waits for a Kubernetes job to either complete or fail.

Arguments:
  [kubectl args]  Any args will be passed to kubectl wait.

Options:
  [kubectl options]  Any options will be passed to kubectl wait.

Example:
  kubectl wait-job job-name
```

## Exit Codes

| Exit Code | Description |
|---|---|
| 0 | The job you are waiting for completed successfully |
| 1 | The job you are waiting for failed |
| 2 | Plugin usage error |
| 3 | The underlying kubectl wait command failed to execute |

## License and Attribution

This code is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/

Attribution: This code was inspired by an answer on Stack Overflow licensed under CC BY-SA 4.0.
Original answer: https://stackoverflow.com/a/60286538/5074828 by Sebastian N (https://stackoverflow.com/users/3745474/sebastian-n)
