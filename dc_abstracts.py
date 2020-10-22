from abc import ABC, abstractmethod
import json

class AttributePrototype(ABC):
    @property
    def name(self):
        return self._name

    @name.setter
    def name(self, name: str):
        self._name = name

    @abstractmethod
    def get(self, **kwargs):
        return kwargs

    @abstractmethod
    def create(self):
        pass

    def save(self, name):
        with open(f'{name}.json', 'w') as f:
            f.write(json.dumps(self.get()))

class PairPrototype(ABC):
    pass
    