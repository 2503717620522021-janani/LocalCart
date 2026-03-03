#  LocalCart: Hyper-Local Price & Deal Aggregator

LocalCart is a hyper-local discovery engine designed for Tier-2 cities like Coimbatore and Chennai. 
It bridges the information gap between offline retailers and digital-first consumers by providing real-time price comparisons and store-specific offers.


In current digital ecosystems, local "street-level" retail data is often missing. LocalCart solves this by providing:
Dynamic Search: Filter by City → Category → Product.
Price Transparency:Compare prices across multiple local vendors instantly.
Proximity Prioritization: Results are automatically sorted by distance to the user.
Vocal for Local:Empowers local businesses to compete with e-commerce giants.

Technical Stack
Backend:Python 3.12 (Flask Framework)
Database: MySQL (Relational Schema)
Frontend: HTML5, CSS3, Bootstrap 5, JavaScript (AJAX/Fetch API)
Tools: Spyder IDE, MySQL Workbench

 System Architecture
The project follows a 3-Tier Architecture:
1. Presentation Layer: Responsive web UI with asynchronous state management.
2. Application Layer: Flask REST API handling hierarchical filtering logic.
3. Data Layer: Optimized MySQL database with indexed local retail records.


 Technology Readiness Level (TRL)
Status: TRL 3 (Proof of Concept)
The analytical and experimental critical functions have been validated. The application successfully demonstrates data retrieval, 
hierarchical filtering, and dynamic front-end rendering using a live database connection.


 Installation & Setup
To run this project locally, follow these steps:

1. Prerequisites
Ensure you have Python 3.12+ and MySQL installed.

2. Install Dependencies
'''bash
pip install flask mysql-connector-python

Database Configuration
Open MySQL Workbench.

Run the provided database_setup.sql script to create the LocalCartDB and populate the 36+ sample records.

Update the db_config in code.py with your local MySQL password.

4. Run the Application
python code.py
Visit http://127.0.0.1:5000 in your browser.
