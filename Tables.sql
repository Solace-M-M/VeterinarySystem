CREATE TABLE owners (
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(150)
);
 
CREATE TABLE veterinarians (
    vet_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(50),
    phone VARCHAR(20)
);
 
CREATE TABLE pets (
    pet_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    species VARCHAR(30),
    breed VARCHAR(50),
    birth_date DATE,
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);
 
CREATE TABLE appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    pet_id INT NOT NULL,
    vet_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason VARCHAR(150),
    status VARCHAR(20) DEFAULT 'Scheduled',
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id),
    FOREIGN KEY (vet_id) REFERENCES veterinarians(vet_id)
);
 
CREATE TABLE treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL,
    treatment_name VARCHAR(100) NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    notes VARCHAR(200),
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);
 
CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    appointment_id INT NOT NULL UNIQUE,
    total_amount DECIMAL(10,2) NOT NULL,
    payment_status VARCHAR(20) DEFAULT 'Unpaid',
    invoice_date DATE,
    FOREIGN KEY (appointment_id) REFERENCES appointments(appointment_id)
);
