import unittest
from app.main import do_something


class TestCase(unittest.TestCase):
    def test_do_something(self):
        self.assertEqual(do_something(), 'Hi!')


if __name__ == '__main__':
    unittest.main()