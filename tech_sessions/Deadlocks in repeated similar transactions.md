# Deadlocks in repeated similar transactions

Consistent ordering of operations within a transaction stops deadlocks in many situations

```mermaid
sequenceDiagram
    TX1->>+Database: Start Transaction
    TX2->>+Database: Start Transaction
    TX1->>+Database: Modify Record A
    Database-->>-TX1: Okay
    TX2->>+Database: Modify Record B
    Database-->>-TX2: Okay
    TX1->>Database: Modify Record B
    TX2->>Database: Modify Record A
    Database-->>-TX1: Deadlock Detected
    Database-->>-TX2: Deadlock Detected
```

```mermaid
sequenceDiagram
    TX1->>+Database: Start Transaction
    TX2->>+Database: Start Transaction
    TX1->>Database: Modify Record A
    Database-->>TX1: Okay
    TX2->>Database: Modify Record A
    TX1->>Database: Modify Record B
    Database-->>TX1: Okay
    Database-->>-TX2: Record A Locked, rollback
    TX1->>Database: Commit Transaction
    TX2->>Database: Potentially Retry Transaction

            
```

## Things to consider

* Can these operations be safely split into multiple transactions?
* If not, can these operations always happen in a consistent order using information that is solely provided in data already available to the transaction?
* If not, can these operations always happen in a consistent order using information that is in the database? (this will be slower, as you'll need to get all the modified objects, first.)