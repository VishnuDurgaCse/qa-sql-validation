-- =============================================
-- QA SQL Data Validation Project
-- Author: Vishnu Durga
-- Tool: SQLite / MySQL
-- Website Tested: E-Commerce Application
-- =============================================

USE qa_testing;

-- =============================================
-- MODULE 1: USER VALIDATION
-- =============================================

-- QA Scenario 1: Find incomplete user profiles
-- Bug: Users registered without phone number
SELECT * FROM users 
WHERE phone IS NULL;

-- QA Scenario 2: Verify total users after registration test
-- Validate: Count matches expected registrations
SELECT COUNT(*) as total_users 
FROM users;

-- QA Scenario 3: Check duplicate emails
-- Bug: Same email registered twice
SELECT email, COUNT(*) as total
FROM users
GROUP BY email
HAVING total > 1;

-- QA Scenario 4: Find inactive users
-- Validate: Inactive accounts identified correctly
SELECT * FROM users 
WHERE status = 'inactive';

-- =============================================
-- MODULE 2: ORDER VALIDATION
-- =============================================

-- QA Scenario 5: Find all failed orders
-- Bug: Orders failing at checkout
SELECT * FROM orders 
WHERE status = 'failed';

-- QA Scenario 6: High value orders stuck in pending
-- Bug: Orders above 10000 not processing
SELECT * FROM orders 
WHERE status = 'pending' 
AND amount > 10000;

-- QA Scenario 7: Order status summary report
-- Validate: Count and total amount per status
SELECT status, COUNT(*) as total, 
SUM(amount) as total_amount 
FROM orders 
GROUP BY status;

-- =============================================
-- MODULE 3: BUG INVESTIGATION
-- =============================================

-- QA Scenario 8: CRITICAL BUG
-- Inactive user was able to place an order
SELECT users.name, users.status, 
orders.product, orders.amount 
FROM orders 
JOIN users ON orders.user_id = users.id 
WHERE users.status = 'inactive';

-- =============================================
-- MODULE 4: TEST DATA CLEANUP
-- =============================================

-- QA Scenario 9: Reset order status for retest
-- Action: Reset delivered order back to pending
UPDATE orders 
SET status = 'pending' 
WHERE id = 1;
SELECT * FROM orders WHERE id = 1;

-- QA Scenario 10: Clean up failed test data
-- Action: Remove failed orders after test cycle
DELETE FROM orders 
WHERE status = 'failed';
SELECT * FROM orders;