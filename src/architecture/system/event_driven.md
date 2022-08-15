# Event-Driven Architecture

## Discovering events

[Event registry in event-driven architecture](https://adhasmana.medium.com/how-to-implement-event-registry-in-event-driven-architecture-fe244b143b1c)


## Access control

* who can publish on a topic
* who can subscribe

## Format

Avoid sensitive information

Fields:

* [Cloud Events](https://github.com/cloudevents/spec/blob/v0.3/spec.md)

Versioning

[Event notification vs Event-Carried state transfer](https://martinfowler.com/articles/201701-event-driven.html)

[Slack event event wrapper](https://api.slack.com/types/event)

## Error handling

* Store event in dead-letter queue if all retries failed
* raise an alert

Business vs. system exceptions

## References

* [EDA and microservices architecture best practices](https://developer.ibm.com/articles/eda-and-microservices-architecture-best-practices/)
* [Topic Architecture best practices](https://docs.solace.com/Best-Practices/Topic-Architecture-Best-Practices.htm)
    Specification for event format
* [Wix - 5 pitfalls to avoid](https://natansil.medium.com/event-driven-architecture-5-pitfalls-to-avoid-b3ebf885bdb1)
