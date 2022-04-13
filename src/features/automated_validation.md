# Automated validation

pre-commit hooks, and build server related.

## Formats

* html: human-readable
* machine-readable format
* display results in console

## What to report

* line of code count
* dependencies with:
   * version (check for vulnerabilities, updates)
   * license (check for incompatible licenses)
* tests results
* tests coverage
* load tests result metrics

## Bibliography

* Static analysis tool list
    * [Wikipedia](https://en.wikipedia.org/wiki/List_of_tools_for_static_code_analysis)
    * [analysis-tools-dev (github)](https://github.com/analysis-tools-dev/static-analysis)
    * [static code analysis tools](https://www.mycplus.com/featured-articles/best-static-code-analysis-and-review-tools/)
* [Gazr](https://gazr.io/)

    Opiniated way to organize common tasks.

    * language and tooling agnostic way
    * set GNU Make and docker as only dependencies

* [pre-commit](https://pre-commit.com/)

    Script for running checks on each commit.
    Only runs against staged files

* Monorepo build tools

   * [Bazel](https://bazel.build/)
   * [Bit](https://bit.dev/)
   * [Buck](https://buck.build/)
   * [Lerna](https://github.com/lerna/lerna)
