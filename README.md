
# Incubyte\_tdd

A new Flutter project developed using **Test-Driven Development (TDD)** principles.

---

## Initial Setup

1. **Create a new Flutter project**

    ```bash
    flutter create incubyte_tdd
    ```

2. **Initialize a Git repository**

    ```bash
    git init .
    git switch -C main
    ```

3. **Make the first commit**

    ```bash
    git add .
    git commit -m "Initial Commit"
    ```

4. **Add the `flutter_test` package as a dev dependency**

    ```bash
    flutter pub add dev:test
    ```

---

### TDD Workflow for `StringCalculator`

**Test Case Flow**:

1. Start with an empty string → `add("") → 0`
2. Single number input → `add("5") → 5`
3. Two numbers input → `add("1,2") → 3`
4. Gradually extend to handle multiple numbers and edge cases.

---

### Test Folder Structure

```
lib/
  string_calculator.dart
test/
  string_calculator_test.dart
```

* Test files should mirror the structure of the `lib/` directory.
* Keep tests organized, modular, and easy to maintain.

---

### Step-by-Step Process

We will build the `add(numbers)` function incrementally. For each step, start by writing a test, then implement the corresponding code.

#### Case 1: Empty String

- **Test**: `add("") → 0`
- **Implementation**: Return 0 for an empty string.


![case 1 output](docs/case_0.png)
