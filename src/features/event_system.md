# Event-driven system

## Discoverning event

## Access control

* who can publish on a topic
* who can subscribe

## Format

Avoid sensitive information

Fields:

* type
    * hierarchcal
    * used for routing
* metadata
    * can be used for correlating/ordering, authorization, audit
    * e.g. timestamp
* payload

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
