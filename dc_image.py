from dc_abstracts import AttributePrototype

class Image(AttributePrototype):
    def __init__(self, name: str, tag=None):
        self.name = name
        self.tag = tag

    @name.setter
    def name(self, name: str):
        nm = name.split(':')
        if len(nm) > 1:
            self._tag = nm[1]
        self._name = nm[0]

    @property
    def tag(self):
        return self._tag

    @tag.setter
    def tag(self, tag):
        self._tag = tag

    @tag.deleter
    def tag(self):
        self._tag = None

    def get(self):
        if self.tag:
            return {'image': f'{self.name}:{self.tag}'}
        else:
            return {'image': self.name}