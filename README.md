# Sleeping barber problem.

* Problem Conditions:
  * 1 waiting room with N chairs.
  * 1 barber room with 1 barber chair
* Barber and Customers
  * If there is no customers, the barber goes to sleep.
  * If a customer enters the shop
  * If all chairs are occupied, the customer leaves.
  * If the barber is busy and chairs are available, the customer sits in one of the free chairs.
  * If the barber is asleep, the customer wakes up the barber.
  
This solution uses three semaphores:
* chairs_mutex: A mutex to access chair count thread-safely.
* sem_client: Signal that a customer is ready.
* sem_barber: Check if barber is idle.
