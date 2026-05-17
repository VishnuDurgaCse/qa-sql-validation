<h1 align="center">🗄️ SQL QA Data Validation Project</h1>
<p align="center">
  Real-world SQL validation scenarios simulating QA testing
  on an e-commerce database with users and orders tables
</p>

---

## 🛠️ Tools Used

![MySQL](https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white)

---

## 📌 What This Project Covers

- ✅ Database design for QA testing
- ✅ User & order data validation
- ✅ Bug investigation using SQL queries
- ✅ Test data cleanup queries
- ✅ Real QA testing lifecycle simulation

---

## 🗃️ Database Design

| Table | Purpose |
|---|---|
| users | Stores registered user data |
| orders | Stores order transactions |

---

## 🧪 QA Modules Covered

### Module 1 — User Validation
| Query | Scenario | Result |
|---|---|---|
| Missing phone | Found users with no phone number | 🐛 Bug Found |
| Total users | Verified registration count | ✅ Pass |
| Duplicate emails | Checked for duplicate registrations | ✅ Pass |
| Inactive users | Identified inactive accounts | ✅ Pass |

### Module 2 — Order Validation
| Query | Scenario | Result |
|---|---|---|
| Failed orders | Found orders failing at checkout | 🐛 Bug Found |
| High value pending | Found orders above 10000 stuck | 🐛 Bug Found |
| Order summary | Generated status report | ✅ Pass |

### Module 3 — Bug Investigation
| Query | Scenario | Result |
|---|---|---|
| Inactive user order | CRITICAL: Inactive user placed order | 🔴 Critical Bug |

### Module 4 — Test Data Cleanup
| Query | Scenario | Result |
|---|---|---|
| Reset order | Reset order status for regression | ✅ Done |
| Delete failed | Cleaned up failed test data | ✅ Done |

---

## 🔑 Key SQL Concepts Used

- ✅ SELECT, WHERE, AND, OR
- ✅ JOIN (INNER JOIN)
- ✅ COUNT, SUM, GROUP BY, HAVING
- ✅ UPDATE, DELETE
- ✅ NULL checks

---

## 📊 Sample Screenshot

![Inactive Users](04_inactive_users.png)

---

## 💡 What I Learned

- How to validate backend data during QA testing
- Using JOIN to find critical bugs across tables
- Writing cleanup queries after test cycles
- Generating test summary reports using SQL

---

## 👩‍💻 Author

**Vishnu Durga S**
🔗 [GitHub](https://github.com/VishnuDurgaCse)
📧 vishnudurgacs@gmail.com
