import random
import pytest
random.seed(42)
from virus import Virus


class Person(object):
    ''' Person objects will populate the simulation. '''

    def __init__(self, _id, is_vaccinated, infection=None):
        ''' We start out with is_alive = True, because we don't make vampires or zombies.
        All other values will be set by the simulation when it makes each Person object.
        If person is chosen to be infected when the population is created, the simulation
        should instantiate a Virus object and set it as the value
        self.infection. Otherwise, self.infection should be set to None.
        '''
        self._id = _id  # int
        self.is_alive = True  # boolean
        self.is_vaccinated = is_vaccinated  # boolean
        self.infection = infection  # Virus object or None

    def vacc_person_instantiation(self):
        self.is_alive = True
        self.is_vaccinated = True
        self.infection = None


    def not_vacc_person_instantiation(self):
        self.is_alive = True
        self.is_vaccinated = False
        self.infection = None


    def sick_person_instantiation(self, repo_rate, mortality_rate):
        self.is_alive = True
        self.is_vaccinated = False
        self.repo_rate = repo_rate
        self.mortality_rate = mortality_rate


    def did_survive_infection(self, Virus):
        ''' Generate a random number and compare to virus's mortality_rate.
        If random number is smaller, person dies from the disease.
        If Person survives, they become vaccinated and they have no infection.
        Return a boolean value indicating whether they survived the infection.
        '''
        # Only called if infection attribute is not None.
        # TODO:  Finish this method. Should return a Boolean
        if self.infection != None and random.random() < Virus.mortality_rate:
            self.is_alive = False
            return False
        else:
            return True



# if __name__ == "__main__":
    # test_did_survive_infection()
    # test_not_vacc_person_instantiation()
    # test_vacc_person_instantiation()
    # test_did_survive_infection()
    # test_sick_person_instantiation()
