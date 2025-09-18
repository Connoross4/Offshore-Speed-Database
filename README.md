# Offshore Speed Database

The Offshore Speed Database is a comprehensive relational database system designed for a fictional marine supply and service business. It centralizes all key operational data, supporting essential business functions such as sales tracking, inventory management, customer service, and purchasing. This project is ideal for portfolio demonstration, ERD modeling, or as a foundation for production systems in marine retail or service shops.

## Project Overview

- **Purpose:**  
  To provide end-to-end data visibility for marine supply/service businesses, enabling streamlined workflows for sales, purchasing, inventory, and customer service.

- **Features:**  
  - **Sales Tracking:** Link sales to employees and customers.
  - **Inventory Management:** Reconcile purchased and sold items for accurate stock control.
  - **Customer & Boat Records:** Track customer contact details and their boats for service history.
  - **Vendor & Manufacturer Management:** Centralize vendor, manufacturer, and part data.
  - **Reporting:** Support monthly sales and inventory reporting.

## Entity-Relationship Highlights

- **Customers** and their **Boats** are linked for detailed service records.
- **Employees**, **Vendors**, and **Phone Type Lookup** organize business and contact details.
- **Parts** are mapped from vendors to offshore inventory using:
  - `OffShorePartLookup`
  - `PartLookup`
  - `ManufacturerLookup`
- **SalesHeader/SaleItems** track invoices, taxes, and items sold.
- **PurchaseHeader/PurchaseItems** record vendor purchases.
- This dual transaction system connects supply chain activity from purchase to customer sale.

## Schema Summary

- **Customer**: Stores customer profiles.
- **Boat**: Links boats to customers for service history.
- **Employees/EmployeePhone**: Employee details and phone contacts.
- **Vendor/PurchaseHeader/PurchaseItems**: Vendor info and purchase records.
- **PartLookup/ManufacturerLookup/OffShorePartLookup**: Maps parts from vendors and manufacturers to offshore inventory.
- **SalesHeader/SaleItems**: Sales transactions, linked to employees and customers.
- **PhoneTypeLookup**: Defines phone types for contact records.

## Example Use Cases

- **Retail/Service Shops:**  
  - Identify top-selling parts and monitor inventory turnover.
  - Track vendor performance and purchase efficiency.
  - Quickly access customer and boat histories for service team operations.
  - Analyze monthly sales for business performance.

## Database Design Principles

- **Referential Integrity:**  
  All foreign keys are strictly enforced for accurate data relationships.
- **Normalization:**  
  Data is organized to minimize redundancy and improve consistency.
- **Transaction Visibility:**  
  Complete linkage between purchases and sales for audit and reporting.

## Getting Started

1. **Setup:**  
   - Use the provided `OffshoreDatabase_Final.sql` file to create and populate the database.
   - Compatible with most SQL RDBMS (tested with SQL Server syntax).
2. **ERD:**  
   - Refer to the schema for entity relationships and keys.
3. **Customization:**  
   - Add views (e.g., `vw_Inventory`, `vw_MonthlySales`) for reporting and analytics.
   - Integrate with an application layer for business workflows.

## File Contents

- **OffshoreDatabase_Final.sql:**  
  - All table definitions, sample data inserts, and referential integrity constraints.

## Credits & License

Designed by Connoross4.  
For educational, demonstration, and portfolio use.

---
**Contact:**  
For questions or suggestions, open an issue or contact [Connoross4](https://github.com/Connoross4).
