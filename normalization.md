# Database Normalization Analysis

## Review of Current Schema
I reviewed our current schema for potential redundancies or normalization issues:

### Current Tables
* User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
* Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
* Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
* Payment (payment_id, booking_id, amount, payment_date, payment_method)
* Review (review_id, property_id, user_id, rating, comment, created_at)
* Message (message_id, sender_id, recipient_id, message_body, sent_at)

## Normalization Analysis
The schema is mostly in Third Normal Form (3NF), but I found two issues:
1. **Location Information**: The `location` field in the Property table likely contains multiple pieces of information (address, city, state, country).
2. **Payment Methods**: We could improve how payment information is stored for better security and user experience.

## Proposed Changes to Achieve 3NF

1. Normalize Location Data

Create a separate table for addresses:

```sql
CREATE TABLE Address (
  address_id UUID PRIMARY KEY,
  street_address VARCHAR NOT NULL,
  city VARCHAR NOT NULL,
  state_province VARCHAR NOT NULL,
  postal_code VARCHAR NOT NULL,
  country VARCHAR NOT NULL
);
```

Then modify the Property table:

```sql
CREATE TABLE Property (
  property_id UUID PRIMARY KEY,
  host_id UUID NOT NULL REFERENCES User(user_id),
  address_id UUID NOT NULL REFERENCES Address(address_id),
  name VARCHAR NOT NULL,
  description TEXT NOT NULL,
  pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

2. Normalize Payment Methods

Create a table for saved payment methods:

```sql
CREATE TABLE PaymentMethod (
  payment_method_id UUID PRIMARY KEY,
  user_id UUID NOT NULL REFERENCES User(user_id),
  method_type ENUM('credit_card', 'paypal', 'stripe') NOT NULL,
  details TEXT, -- encrypted payment details
  is_default BOOLEAN,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Payment (
  payment_id UUID PRIMARY KEY,
  booking_id UUID NOT NULL REFERENCES Booking(booking_id),
  payment_method_id UUID NOT NULL REFERENCES PaymentMethod(payment_method_id),
  amount DECIMAL NOT NULL,
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Simple Explanation of Normalization Steps
I improved the database design in two key ways:
1. **I separated address information**: Instead of having one "location" field, I created a dedicated Address table. This lets us search by city or country, prevents inconsistent data, and makes address updates easier.
2. **I improved payment handling**: By creating a PaymentMethod table, users can save multiple payment methods, and sensitive payment details are properly separated from transaction records.

These changes ensure our database follows 3NF principles while remaining practical for a vacation rental application. The result is a more efficient database with better data integrity and improved search capabilities.