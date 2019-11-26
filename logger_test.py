from logger import Logger
from person import Person
from virus import Virus
from simulation import Simulation
import pytest
import io
import sys
import os.path

# Test Logger Class

def test_create_file():
    file_name = 'logs.txt'
    logger = Logger(file_name)
    # Maybe delete file after creation
    # Then test that it was actually deleted.
    # assert not os.path.isfile(file_name)

    assert os.path.isfile(file_name)

def test_write_metadata():
    file_name = 'logs.txt'
    logger = Logger(file_name)

    logger.write_metadata(1000,50,'bulldog', 0.8, 1.1)

def test_log_interaction():
    file_name = 'logs.txt'
    logger = Logger(file_name)

    person1 = Person(1, False, None)
    person2 = Person(3, True, None)

    logger.log_interaction(person1, person2, True, False, True)

def test_log_infection_survival():
    file_name = 'logs.txt'
    logger = Logger(file_name)
    virus = Virus('wild_one', 0.8, 0.2)

    person1 = Person(2, False, virus)
    person2 = Person(4, True, None)

    logger.log_infection_survival(person1, True)

def test_log_time_step():
    file_name = 'logs.txt'
    logger = Logger(file_name)

    logger.log_time_step(2)
