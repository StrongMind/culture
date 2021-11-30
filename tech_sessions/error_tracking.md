# Error Tracking (Sentry.io)
## what is sentry
* Light weight APM
* Application Error Tracking/Monitoring
* Sends stack traces and relative scoped logging
* Buckets similar errors
* Notifies if reoccurrences

## why use it
* enable continuous deployment
* reduce manual QA
* know about bad things before the customer reports them

## what does it tell us
* when errors are being thrown to users

## anti-patterns
* Lack of trip wires in production (not all repositories/apps monitored)
* Ignoring errors
* Prod, Staging, Dev not filterable/tagged
