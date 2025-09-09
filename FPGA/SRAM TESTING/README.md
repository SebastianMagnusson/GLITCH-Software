## Explanation of Tests

---

### `SRAM_Breadboard_Test`
- **Start:** Press `btn0` to start.
- **Process:** The program will write to address 0 and then read from it, then send it to computer via UART
---

### `SRAM_Breadboard_Test2`
- **Start:** Press `btn0` to start.
- **Process:** The program will first write to every address (0 to 2^22) and then read one address every time btn1 is pressed. The pattern is alternating between changing 0s and 1s so you can see that it actually works.

---

### `SRAM_Breadboard_Test3`
- **Start:** Press `btn0` to start.
- **Process:** The program will then read every address and return one in the middle of the memory that does not follow the pattern, then it will continue its read and return the last address as well so we know that it actually goes through the entire memory. The address that does not follow the pattern is set when writing at the startup.

---

### `SRAM_Breadboard_Test4`
- **Process:** This test is similar to the 3rd one, but this time the faulty value will be corrected and its address will be sent to the computer. Then it will also read that address again. 
- **Output:** The words sent to the computer are:
    1. Address of faulty address
    2. Value of the faulty address
    3. Value of the fixed address

