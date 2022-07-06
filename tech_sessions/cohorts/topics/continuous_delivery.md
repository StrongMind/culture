# Continuous Delivery

## Continuous Integration
* Merging changes to main/master as often as possible.
* Build validated on merge.

### Need/Cost
* Automated tests
* Server/Pipeline to continuously integrate code from repository and run tests
* Frequent merges

### Benefits
* Less bugs shipped to prod as regressions captured by automated tests
* Building the release is easy as integration solved early
* Less context switching because know build broken immediately
* Test cost reduced drastically
* Quality culture re-enforced

## Continuous Delivery
* Continuous Integration + auto release process to testing/prod.
* Depends on automated release process.
* You determine timing.

### Need/Cost
* Strong continuous integration adn test suite coverage
* Deployments automated.  Trigger still manual.
* Feature flags.

### Benefits
* Complexity of releasing gone.
* Releasing more often and getting feedback more frequently.
* Less pressure on decisions for small changes, iterating faster.

## Continuous Deployment
* Continuous Delivery + auto deployment (no human intervention)

### Need/Cost
* Rock solid testing culture.
* Documentation process to keep up with releases.
* Feature flags enabling coordination.

### Benefits
* No need to pause for releases. 
* Releases less risky and easier to fix in case of problem because of small batches.
* Customers see continuous stream of improvements and quality increases daily.