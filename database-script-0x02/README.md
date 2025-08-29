# Database Seeding Script

This folder contains SQL scripts to populate the Airbnb database with **sample data**.

## Files
- `seed.sql`: Contains SQL `INSERT` statements for seeding data into:
  - `User`
  - `Property`
  - `Booking`
  - `Payment`
  - `Review`
  - `Message`

## Usage
1. Ensure you have already created the database schema from `database-script-0x01/schema.sql`.
2. Run the following command in your SQL client:

```bash
mysql -u username -p alx_airbnb < seed.sql
