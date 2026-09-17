INSERT INTO owners (first_name, last_name, phone, email, address) VALUES
('Maria', 'Santos', '09171234567', 'maria.santos@email.com', '12 Rizal St, Imus, Cavite'),
('Juan', 'Dela Cruz', '09182345678', 'juan.delacruz@email.com', '45 Bonifacio Ave, Dasmarinas, Cavite'),
('Ana', 'Reyes', '09193456789', 'ana.reyes@email.com', '78 Mabini St, Bacoor, Cavite'),
('Carlos', 'Garcia', '09204567890', 'carlos.garcia@email.com', '23 Aguinaldo Hwy, Imus, Cavite'),
('Liza', 'Torres', '09215678901', 'liza.torres@email.com', '9 Luna St, General Trias, Cavite');
 
INSERT INTO veterinarians (first_name, last_name, specialization, phone) VALUES
('Dr. Michael', 'Lim', 'General Practice', '09221234567'),
('Dr. Sarah', 'Cruz', 'Surgery', '09232345678'),
('Dr. Kevin', 'Tan', 'Dermatology', '09243456789'),
('Dr. Grace', 'Villanueva', 'Dentistry', '09254567890'),
('Dr. Paolo', 'Ramos', 'General Practice', '09265678901');
 
INSERT INTO pets (owner_id, name, species, breed, birth_date) VALUES
(1, 'Bantay', 'Dog', 'Aspin', '2021-03-15'),
(1, 'Mimi', 'Cat', 'Persian', '2022-06-20'),
(2, 'Rocky', 'Dog', 'Shih Tzu', '2020-11-05'),
(3, 'Whiskers', 'Cat', 'Siamese', '2021-09-12'),
(4, 'Buddy', 'Dog', 'Labrador', '2019-01-30'),
(5, 'Luna', 'Cat', 'British Shorthair', '2023-02-18');
 
INSERT INTO appointments (pet_id, vet_id, appointment_date, reason, status) VALUES
(1, 1, '2026-08-01 09:00:00', 'Annual vaccination', 'Completed'),
(2, 3, '2026-08-02 10:30:00', 'Skin allergy check-up', 'Completed'),
(3, 2, '2026-08-03 13:00:00', 'Spay surgery', 'Completed'),
(4, 4, '2026-08-05 11:00:00', 'Dental cleaning', 'Scheduled'),
(5, 1, '2026-08-06 14:00:00', 'General check-up', 'Completed'),
(6, 5, '2026-08-07 09:30:00', 'Vaccination', 'Cancelled');
 
INSERT INTO treatments (appointment_id, treatment_name, cost, notes) VALUES
(1, 'Rabies Vaccine', 450.00, 'No adverse reaction'),
(1, 'Deworming', 200.00, 'Administered orally'),
(2, 'Allergy Medication', 350.00, 'Prescribed 7-day course'),
(3, 'Spay Surgery', 3500.00, 'Successful, pet recovering'),
(3, 'Post-op Antibiotics', 300.00, '5-day course'),
(5, 'General Check-up Fee', 300.00, 'Healthy, no issues found');
 
INSERT INTO invoices (appointment_id, total_amount, payment_status, invoice_date) VALUES
(1, 650.00, 'Paid', '2026-08-01'),
(2, 350.00, 'Paid', '2026-08-02'),
(3, 3800.00, 'Paid', '2026-08-03'),
(5, 300.00, 'Unpaid', '2026-08-06');
