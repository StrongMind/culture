# 🎯 Take-Home Exercise: Director of Data Analytics

Thank you for your interest in the Director of Data Analytics position at StrongMind. This take-home exercise is designed to assess your technical skillset, problem-solving approach, and ability to connect data work to business impact.

⏱ **Estimated Time**: 90–120 minutes  
🛠 **Tools**: Use any tools or languages you are comfortable with (SQL, Python, plain text, diagrams, etc.)

---

## 📝 Instructions

- Submit your responses in a single document (PDF, Markdown, or Word preferred).
- If including code, embed it or link to a GitHub/Gist repo.
- Clearly label each section of your response.
- Emphasize clarity of thought and structured problem-solving.

---

## 📦 Submission

Please submit your completed exercise to [recruiter@strongmind.com](mailto:recruiter@strongmind.com) with the subject “Director of Data Science and Analytics - Your Name". Reach out if you need additional time — we’re happy to accommodate where possible.

---

## 🧠 Exercise Overview

The exercise is divided into three sections:

1. **Data Architecture & Strategy**  
2. **Applied Analytics Scenario**  
3. **Business & Communication**  
4. **Bonus (Optional)**

---

## Section 1: Data Architecture & Strategy (Short Answer)

### 1.1. Designing a Scalable Data Pipeline  
Describe your recommended architecture to support both batch and near real-time analytics. Address:

- Ingestion from diverse systems
- Data quality and transformation practices
- Scalability and cost-effectiveness
- Supporting downstream BI/AI applications

### 1.2. ELT vs ETL  
- When is ELT better suited than ETL?
- How would you ensure transformations are modular, auditable, and maintainable?

---

## Section 2: Applied Analytics Scenario

You’re working with simplified data from our K–12 virtual school environment:

**Table: `enrollments`**  
- `student_id`, `enrollment_date`, `grade_level`, `school_id`, `status`  

**Table: `attendance`**  
- `student_id`, `attendance_date`, `present` (boolean), `minutes_attended`

Answer using SQL, pseudocode, or written explanation.

### 2.1. Retention Query  
Write a query to calculate the **retention rate** by `school_id` for students who enrolled in the past 6 months and are still "active".

### 2.2. Attendance Analysis  
Calculate the **average attendance rate** (percentage of days present) by `grade_level` for the last 30 days.

### 2.3. Data Quality Debugging  
You find `student_id`s in `attendance` that don’t exist in `enrollments`.

- How would you detect and quantify this?
- How would you prevent or fix the issue?

---

## Section 3: Business & Communication

### 3.1. Interpreting the Data  
You’ve built a dashboard showing low attendance in some schools. A school leader disagrees and questions the data.

- How would you handle the conversation?
- What would you do next?

### 3.2. Improving Data Literacy  
Some leaders confuse “retention” with “attendance.”

- How would you clarify this?
- Would you update reporting tools or processes?

---

## Bonus (Optional)

### 4.0. Modeling Challenge  
You’re building a dbt model to calculate **average weekly attendance per student**.

Describe:

- Table structure and logic
- Key assumptions
- How you'd implement the model in dbt

---

## ✅ What We're Evaluating

- Strategic architecture thinking
- SQL fluency and data problem-solving
- Clarity in communication and reasoning
- Ability to align technical insights with business value
- Proactive handling of ambiguity and collaboration scenarios
