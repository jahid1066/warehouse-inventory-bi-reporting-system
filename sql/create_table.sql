-- Supplier:
CREATE TABLE Supplier (
    supplier_ID INT PRIMARY KEY,
    company VARCHAR(60) NOT NULL,
    contact_details VARCHAR(70) NOT NULL,
    dangerous_goods_storage CHAR(4)
);

-- Staff:
CREATE TABLE Staff (
    staff_ID INT PRIMARY KEY,
    name_ VARCHAR(50) NOT NULL,
    job_position VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    email VARCHAR(40),
    phone_no VARCHAR(20),
    supplier_ID INT,
    FOREIGN KEY (supplier_ID) REFERENCES Supplier(supplier_ID)
);

-- Goods:
CREATE TABLE Goods (
    cargo_ID INT PRIMARY KEY,
    price INT NOT NULL,
    item_name VARCHAR(60),
    type_of_goods VARCHAR(60),
    supplier_ID INT,
    FOREIGN KEY (supplier_ID) REFERENCES Supplier(supplier_ID)
);

-- Warehouse:
CREATE TABLE Warehouse (
    warehouse_code INT PRIMARY KEY,
    warehouse_location VARCHAR(60),
    warehouse_manager VARCHAR(50),
    remaining_capacity INT,
    dangerous_goods_permit VARCHAR(50),
    establishment_time DATETIME
);

-- Store:
CREATE TABLE Store (
    cargo_ID INT,
    warehouse_code INT,
    storage VARCHAR(50),
    PRIMARY KEY (cargo_ID, warehouse_code),
    FOREIGN KEY (cargo_ID) REFERENCES Goods(cargo_ID),
    FOREIGN KEY (warehouse_code) REFERENCES Warehouse(warehouse_code)
);
