#include <iostream>
#include <string>
using namespace std;

// -------------------- Subsystems --------------------

// 1. Inventory Service
class InventoryService {
public:
    bool checkAvailability(string product) {
        cout << "Checking availability for: " << product << endl;
        // Dummy logic
        return true;
    }
};

// 2. Payment Service
class PaymentService {
public:
    bool processPayment(string paymentType, double amount) {
        cout << "Processing " << paymentType << " payment of Rs." << amount << endl;

        if (paymentType == "UPI") {
            cout << "UPI Payment Successful\n";
        } 
        else if (paymentType == "CARD") {
            cout << "Card Payment Successful\n";
        } 
        else {
            cout << "Invalid Payment Type\n";
            return false;
        }
        return true;
    }
};

// 3. Email Service
class EmailService {
public:
    void sendEmail(string userEmail) {
        cout << "Sending order confirmation email to " << userEmail << endl;
    }
};

// -------------------- Facade --------------------

class OrderFacade {
private:
    InventoryService inventory;
    PaymentService payment;
    EmailService email;

public:
    void placeOrder(string product, string paymentType, double amount, string userEmail) {
        
        cout << "\n--- Order Processing Started ---\n";

        // Step 1: Check Availability
        if (!inventory.checkAvailability(product)) {
            cout << "Product not available\n";
            return;
        }

        // Step 2: Process Payment
        if (!payment.processPayment(paymentType, amount)) {
            cout << "Payment failed\n";
            return;
        }

        // Step 3: Send Email
        email.sendEmail(userEmail);

        cout << "--- Order Placed Successfully ---\n";
    }
};

// -------------------- Client --------------------

int main() {
    OrderFacade order;

    order.placeOrder("Laptop", "UPI", 50000, "user@gmail.com");

    return 0;
}