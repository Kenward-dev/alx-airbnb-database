# Data Partitioning

Data partitioning is a technique that divides large tables into smaller, more manageable pieces called partitions. Each partition is stored as a separate data file, allowing the database engine to scan only relevant partitions rather than the entire table when executing queries.

## Key Benefits of Partitioning

- Improved query performance - Queries that filter on the partitioning key can skip irrelevant partitions
- Easier maintenance - Operations like backup, restore, and data purging can be performed on specific partitions
- Balanced I/O - Data access can be spread across multiple disks
- Higher availability - Individual partitions can be taken offline while others remain available

## Range partition
Partitions data based on ranges of values, commonly used for dates.

```sql
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    CONSTRAINT check_dates CHECK (end_date >= start_date)
)
PARTITION BY RANGE (YEAR(sale_date)) (
    PARTITION p2020 VALUES LESS THAN (2021),
    PARTITION p2021 VALUES LESS THAN (2022),
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024)
);
```