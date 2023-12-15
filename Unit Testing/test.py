import unittest

from ENTITY.Customer import Customer
from ENTITY.Products import Product
from dao.ServiceRepository import OrderProcessorRepository

class TestEcommerce(unittest.TestCase):
    def test_product_creation(self):
        p = Product(name='Compact Laptop Backpack', price=1999, description= 'Carry your laptop and essentials in style. Designed for comfort, organization, and durability.', stock_quantity=200)
        result = OrderProcessorRepository.createProduct(pob=p)
        self.assertEqual(result, True, 'Product Creation Successful.')

    def test_customer_registration(self):
        c = Customer(name='Palak Sinha', email = 'palaksinha@email.com', password='palak1234')
        result = OrderProcessorRepository.createCustomer(cob=c)
        self.assertEqual(result, True, 'Customer Registration Successful.')

if __name__ == '_main_':
    unittest.main()