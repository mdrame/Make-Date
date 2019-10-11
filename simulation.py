import random, sys
from person import Person
from logger import Logger
from virus import Virus
random.seed(42)


class Simulation:
    def __init__(self, pop_size, vacc_percentage, virus_name, mort_rate, repo_rate, initial_infected=1):

        self.pop_size = pop_size # The Int value of the total population size (i.e. 10000)
        self.vacc_percentage = vacc_percentage # The float value of the percentage of the population that is vaccinated (i.e. 0.1 = 10%)
        self.virus_name = virus_name # The string value of the virus' name
        self.mort_rate = mort_rate # The rate at which a non-vaxxed erson dies when they come in contact with the virus
        self.repo_rate = repo_rate # The rate at whihc the disease can spread amongst people
        self.initial_infected = initial_infected # The patient zero's of our population

        self.population = [] # The array that holds our Person objects
        self.newly_infected = [] # Our temporary storage for Person object infected in each round
        self.current_infected = [] # The permanent storage for the Person objects infected in total

        self.time_step_counter = 0
        self.next_person_id = 0 # The counter for interating over possible Person id's. 
        self.total_infected = 0 # The total number of infected Persons.
        self.total_dead = 0 # Int

        self.population = self._create_population(initial_infected)

        self.file_name = "{}_simulation_pop_{}_vp_{}_infected_{}.txt".format(
            virus_name, pop_size, vacc_percentage, initial_infected)

        self.logger = Logger(self.file_name)


    def _create_population(self, initial_infected):
        self.population = []
        infected_count = 0
        while len(self.population) != self.pop_size:
            if infected_count != initial_infected:
                infected_person = Person(self.next_person_id, True, self.virus_name)
                self.current_infected.append(infected_person)
                self.population.append(infected_person)
                infected_count += 1
                self.next_person_id += 1
            else:
                if random.random() < self.vacc_percentage:
                    vaxxed_person = Person(self.next_person_id, True, None)
                    self.population.append(vaxxed_person)
                    self.next_person_id += 1
                else:
                    non_vaxxed_person = Person(self.next_person_id, False, None)
                    self.population.append(non_vaxxed_person)
                    self.next_person_id += 1
        self.total_infected = infected_count
        return self.population

        # Use the attributes created in the init method to create a population that has
        # the correct intial vaccination percentage and initial infected.

    def _simulation_should_continue(self):

        print('total infected', len(self.current_infected))
        print('current Infected', self.current_infected)
        print('population size', self.pop_size)

        continue_var = False

        if self.total_infected == (self.pop_size - self.total_dead):
            self.logger.log_continue(0)
            continue_var = False

        if self.current_infected == self.pop_size:
            self.logger.log_continue(2)
            continue_var = False

        if self.total_infected == 0:
            self.logger.log_continue(1)
            continue_var = False

        else:
            continue_var = True

        return continue_var

    def run(self):
        ''' This method should run the simulation until all requirements for ending
        the simulation are met.
        '''
        Logger.write_metadata(self, self.pop_size, self.vacc_percentage, self.virus_name, self.mort_rate, self.repo_rate)
        should_continue = self._simulation_should_continue()
        # TODO: Finish this method.  To simplify the logic here, use the helper method
        # _simulation_should_continue() to tell us whether or not we should continue
        # the simulation and run at least 1 more time_step.

        # TODO: Keep track of the number of time steps that have passed.
        # HINT: You may want to call the logger's log_time_step() method at the end of each time step.
        # TODO: Set this variable using a helper

        while should_continue is True:
         # TODO: for every iteration of this loop, call self.time_step() to compute another
        # round of this simulation.
            self.time_step()
            self.logger.log_continue(3)
            self.time_step_counter += 1
            should_continue = self._simulation_should_continue()
        print(f'The simulation has ended after {self.time_step_counter} turns.')

    def time_step(self):
        for person in self.population:
            for infected_person in self.current_infected:
                interactions = 0
                while interactions <= 100:
                    alive = False
                    while not alive:
                        random_person = self.population[random.randint(0, self.pop_size - 1)]
                        if random_person.is_alive:
                            alive = True
                    self.interaction(infected_person, random_person)
                    interactions += 1

        for person in self.population:
            if person.is_alive and person.infection == True:
                self.logger.log_infection_survival(person, person.did_survive_infection(self.mort_rate))
        self.time_step_counter += 1
        self.logger.log_time_step(self.time_step_counter)



    def interaction(self, person, random_person):
        '''This method should be called any time two living people are selected for an
        interaction. It assumes that only living people are passed in as parameters.
        Args:
            person1 (person): The initial infected person
            random_person (person): The person that person1 interacts with.
        '''
        # Assert statements are included to make sure that only living people are passed
        # in as params
        assert person.is_alive == True
        assert random_person.is_alive == True

        # TODO: Finish this method.
        #  The possible cases you'll need to cover are listed below:
            # random_person is vaccinated:
            #     nothing happens to random person.
            # random_person is already infected:
            #     nothing happens to random person.
            # random_person is healthy, but unvaccinated:
            #     generate a random number between 0 and 1.  If that number is smaller
            #     than repro_rate, random_person's ID should be appended to
            #     Simulation object's newly_infected array, so that their .infected
            #     attribute can be changed to True at the end of the time step.

        if random_person.is_vaccinated or random_person.infection == None:
            self.logger.log_interaction(person, random_person, False, True, False)
            return

        if random_person.is_vaccinated == False and random_person.infection == None:
            if random.random() < self.repo_rate:
                self.newly_infected.append(random_person)
                self.logger.log_interaction(person, random_person)
        # TODO: Call slogger method during this method.


    def _infect_newly_infected(self):
        ''' This method should iterate through the list of ._id stored in self.newly_infected
        and update each Person object with the disease. '''
        # TODO: Call this method at the end of every time step and infect each Person.
        for person in self.newly_infected:
            for person.id in self.population:
                person.infected = True
        self.newly_infected = []

        # TODO: Once you have iterated through the entire list of self.newly_infected, remember
        # to reset self.newly_infected back to an empty list.


if __name__ == "__main__":
    params = sys.argv[1:]
    pop_size = int(params[0])
    vacc_percentage = float(params[1])
    virus_name = str(params[2])
    mort_rate = float(params[3])
    repo_rate = float(params[4])

    if len(params) == 6:
        initial_infected = int(params[5])
    else:
        initial_infected = 1

    sim = Simulation(pop_size, vacc_percentage, virus_name, mort_rate, repo_rate, initial_infected)

    sim.run()
