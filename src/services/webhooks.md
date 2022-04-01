# Webhooks

## event list

register/list events, with versioned format


## Webhook model

register endpoints for webhooks

* URL
    * must be HTTPS
    * can have several ?
    * set up HTTP method ?
* optional description
* userID
* is broken
* event format version (version per event type ?)
* last event sent time (for information)


## Guarantees

* event is sent at least once
    * event identifier to check if already handled
    * can be sent several times
    * consumer should make sure event handling is idempotent
* no guarantees for order of event
* possibility to list source ip addresses where the call can come from


## protect payload, authenticate consumer

* verify that webhook endpoint belong to subscriber
    * challenge field to be echoed back -> validates that endpoint made for this purpose
    * e.g. Dropbox https://www.dropbox.com/developers/reference/webhooks#documentation
* avoid sending sensitive data
* encrypt payload
    * verify identity of consuming endpoints
    * uncommon among major webhook providers
* certificate pinning
    * use https, make sure certificate is valid and not self-signed


## authenticate sender of the event

* sign payload with subscriber secret key
    * allows to check authenticity of the request
    * can be symmetric or asymetric
    * e.g. Stripe https://stripe.com/docs/webhooks/signatures
    * old secret can expire immediately, or after a delay
        * allows consumer to update verification code
* add timestamp in signature
    * prevents [replay attack](https://en.wikipedia.org/wiki/Replay_attack)
    * done by Stripe


## error handling

* success: 2XX
    * follow redirects ? (301, 302) -> requires max redirect count
* request timeout
    * slack: 3s, dropbox: 10s

* retries with exponential backoff
    * header field indicating attempt number/reason for retry ?
        [Slack](https://api.slack.com/apis/connections/events-api#the-events-api__field-guide__error-handling__graceful-retries)
    * header in consumer response to turn of retries for this event ? Done by Slack
* webhook disabled after a certain amount of failure rate
    * dropbox, Slack: 5%
    * notify developers

[Stripe guarantees](https://stripe.com/docs/webhooks/best-practices)


## Rate limit

Avoid flooding consumer
* `rate_limit_reached` event

[Slack](https://api.slack.com/apis/connections/events-api#the-events-api__responding-to-events__rate-limiting-event)


## Developer mode

* allow to send test events
* support for different environments ?


## Logging

Goals:

* debugging
* compliance


## Reference

### Articles

* [Building webhooks into your application guidelines and best practices](https://workos.com/blog/building-webhooks-into-your-application-guidelines-and-best-practices)
* [Webhooks done right](https://medium.com/prospa-engineering/webhooks-done-right-676d4e74578a)


### Examples

* [Slack event API](https://api.slack.com/apis/connections/events-api)
* [Twilio](https://www.twilio.com/docs/usage/webhooks)
* [Dropbox](https://www.dropbox.com/developers/reference/webhooks#documentation)
* [Stripe](https://stripe.com/docs/webhooks)
