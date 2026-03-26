/*
1. Price Check

A shop uses old cash registers where the cashier manually types in item prices. Because of this, mistakes can happen.

You are given two lists:

a. Correct prices for each item.
b. Prices actually typed into the register during the sale.

Task

Count how many prices were typed incorrectly.

If a typed price does not match the correct price for the same item, it counts as an error.
Return the total number of errors.

Example
products = ['eggs', 'milk', 'cheese']
productPrices = [2.89, 3.29, 5.79]

productSold = ['eggs', 'eggs', 'cheese', 'milk']
soldPrice = [2.89, 2.99, 5.97, 3.29]

Output
2

Explanation
| Product | Price Entered | Actual Price | Error |
| ------- | ------------- | ------------ | ----- |
| eggs    | 2.89          | 2.89         | No    |
| eggs    | 2.99          | 2.89         | Yes   |
| milk    | 5.97          | 5.79         | Yes   |
| cheese  | 3.29          | 3.29         | No    |

Input Format
First line: integer n
Next n lines: product names
Next line: integer n
Next n lines: productPrices
Next line: integer m
Next m lines: productSold
Next line: integer m
Next m lines: soldPrice
*/
int priceCheck(vector<string> products, vector<float> productPrices, vector<string> productSold, vector<float> soldPrice) {
    unordered_map<string, float> catalog;
    
    for (int i = 0; i < products.size(); i++) {
        catalog[products[i]] = productPrices[i];
    }
    
    int errorCount = 0;
    
    // 2. Iterate through the sales records
    for (int i = 0; i < productSold.size(); i++) {
        string soldItem = productSold[i];
        float actualSoldPrice = soldPrice[i];
        
        // 3. Look up the official price in our catalog map
        // Compare it with the actual price recorded in the sale
        if (catalog[soldItem] != actualSoldPrice) {
            errorCount++;
        }
    }
    
    return errorCount;

}
