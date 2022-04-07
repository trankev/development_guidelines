# Testing

## Test types

* unit tests
  * direct function call
  * no dependencies to external resources (database, API)
  * fast
* integration tests
  * direction function call
  * dependencies to external resources
* functional tests
  * service call (HTTP), product seen as black box
  * can be called against an arbitrary resource (API instance)
  * should reflect end user use cases
* load tests

## Testing with feature flags

Test twice: once with production feature flags settings, once with all flags enabled

## References

* [Slack: handling flaky tests at scale: auto-detection and suppression](https://slack.engineering/handling-flaky-tests-at-scale-auto-detection-suppression/)
