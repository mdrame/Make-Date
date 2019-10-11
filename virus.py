class Virus(object):
    '''Properties and attributes of the virus used in Simulation.'''

    def __init__(self, name, repro_rate, mortality_rate):
        self.name = name
        self.repro_rate = repro_rate
        self.mortality_rate = mortality_rate


def test_virus_instantiation():
    '''Check to make sure that the virus instantiator is working.'''
    virus = Virus("Ebola", 0.25, 0.7)
    assert virus.name == "Ebola"
    assert virus.repro_rate == 0.25
    assert virus.mortality_rate == 0.7


if __name__ == '__main__':
    test_virus_instantiation()
