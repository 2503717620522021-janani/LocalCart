-- 1. DATABASE INITIALIZATION
CREATE DATABASE IF NOT EXISTS LocalCartDB;
USE LocalCartDB;

-- 2. TABLE STRUCTURE
CREATE TABLE IF NOT EXISTS LocalStores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    location_city VARCHAR(100),
    category VARCHAR(100),
    product_name VARCHAR(255),
    store_name VARCHAR(255),
    price INT,
    offer_details VARCHAR(255),
    distance_km FLOAT
);

-- 3. RESET DATA (To ensure a clean demo)
TRUNCATE TABLE LocalStores;

-- SECTION 1: COIMBATORE DATA

-- Coimbatore: Electronics (iPhone, Macbook, Headphones)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Coimbatore', 'Electronics', 'iPhone', 'Apple iStore Brookefields', 72000, 'Flat ₹5000 Cashback', 1.2),
('Coimbatore', 'Electronics', 'iPhone', 'Poorvika Mobiles RS Puram', 70500, 'Free Tempered Glass', 2.4),
('Coimbatore', 'Electronics', 'Macbook', 'Croma Peelamedu', 85000, 'Student Discount', 2.5),
('Coimbatore', 'Electronics', 'Macbook', 'Reliance Digital Gandhipuram', 83500, 'No Cost EMI', 3.1),
('Coimbatore', 'Electronics', 'Headphones', 'Sony Center', 15000, 'Free Case', 0.8),
('Coimbatore', 'Electronics', 'Headphones', 'Zebronics Point', 12000, '1 Year Extra Warranty', 1.9);

-- Coimbatore: Dresses (Silk Saree, Jeans, Jersey)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Coimbatore', 'Dresses', 'Silk Saree', 'Pothys Cross Cut Rd', 4500, 'Wedding Season Sale', 1.1),
('Coimbatore', 'Dresses', 'Silk Saree', 'Shree Devi Textiles', 4200, 'Fixed Price Discount', 0.9),
('Coimbatore', 'Dresses', 'Jeans', 'Levi’s Store', 3200, 'Buy 1 Get 1 Free', 3.4),
('Coimbatore', 'Dresses', 'Jeans', 'Max Fashion', 1800, 'Flat 10% Off', 2.2),
('Coimbatore', 'Dresses', 'Jersey', 'Nike Factory', 2500, '15% Off', 4.2),
('Coimbatore', 'Dresses', 'Jersey', 'Decathlon Neelambur', 1500, 'Membership Points', 6.5);

-- Coimbatore: Cosmetics (Sunscreen, Lipstick, Perfume)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Coimbatore', 'Cosmetics', 'Sunscreen', 'Nykaa On Trend', 850, 'Free Sample', 1.5),
('Coimbatore', 'Cosmetics', 'Sunscreen', 'Health & Glow', 790, 'Member Discount', 1.2),
('Coimbatore', 'Cosmetics', 'Lipstick', 'Sugar Cosmetics', 650, 'Combo Deal', 2.1),
('Coimbatore', 'Cosmetics', 'Lipstick', 'Lakme Salon', 800, 'Expert Consultation', 1.8),
('Coimbatore', 'Cosmetics', 'Perfume', 'Lifestyle Mall', 2200, 'Gift Wrap Free', 1.9),
('Coimbatore', 'Cosmetics', 'Perfume', 'Shoppers Stop', 2500, 'Premium Packaging', 2.4);


-- SECTION 2: CHENNAI DATA

-- Chennai: Electronics (iPhone, Macbook, Headphones)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Chennai', 'Electronics', 'iPhone', 'iWorld T-Nagar', 71500, 'Exchange Bonus', 0.5),
('Chennai', 'Electronics', 'iPhone', 'The Mobile Store Adyar', 71000, 'Instant Discount', 2.1),
('Chennai', 'Electronics', 'Macbook', 'Reliance Digital Velachery', 84000, 'Bank Cashback', 3.2),
('Chennai', 'Electronics', 'Macbook', 'Imagine Apple Store', 86000, 'Free Software Bundle', 1.1),
('Chennai', 'Electronics', 'Headphones', 'Poorvika Anna Nagar', 14500, 'Flat 10% Off', 1.4),
('Chennai', 'Electronics', 'Headphones', 'Croma OMR', 14800, 'Extended Warranty', 4.5);

-- Chennai: Dresses (Silk Saree, Jeans, Jersey)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Chennai', 'Dresses', 'Silk Saree', 'Nalli Silks', 5500, 'Heritage Discount', 0.9),
('Chennai', 'Dresses', 'Silk Saree', 'Kumaran Silks', 5200, 'Festival Offer', 1.3),
('Chennai', 'Dresses', 'Jeans', 'Lifestyle Express Avenue', 3000, 'Flat 20% Off', 1.1),
('Chennai', 'Dresses', 'Jeans', 'Westside', 2500, 'Member Rewards', 2.8),
('Chennai', 'Dresses', 'Jersey', 'Adidas Marina', 2800, 'New Arrival', 2.0),
('Chennai', 'Dresses', 'Jersey', 'Puma Store OMR', 2600, 'End of Season', 3.7);

-- Chennai: Cosmetics (Sunscreen, Lipstick, Perfume)
INSERT INTO LocalStores (location_city, category, product_name, store_name, price, offer_details, distance_km) VALUES 
('Chennai', 'Cosmetics', 'Sunscreen', 'Kaya Clinic', 950, 'Consultation Free', 1.2),
('Chennai', 'Cosmetics', 'Sunscreen', 'Apollo Pharmacy', 800, 'Instant Cashback', 0.5),
('Chennai', 'Cosmetics', 'Lipstick', 'MAC Cosmetics', 1800, 'Vibe Check Offer', 0.4),
('Chennai', 'Cosmetics', 'Lipstick', 'Revlon Counter', 1200, 'Classic Matte Deal', 1.5),
('Chennai', 'Cosmetics', 'Perfume', 'Parcos Phoenix Mall', 4500, 'Import Sale', 0.7),
('Chennai', 'Cosmetics', 'Perfume', 'Sephora Marina', 4800, 'Luxury Sample Kit', 2.2);
