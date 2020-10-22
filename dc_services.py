from dc_abstracts import AttributePrototype
from dc_image import  Image

class Service(AttributePrototype):
    def __init__(self, name: str, image=None):
        self.name = name
        self.path = name
        self.image = image

    @property
    def path(self):
        return f'./{self._path}'

    @path.setter
    def path(self, name):
        self._path = name

    @path.deleter
    def path(self):
        self._path = self.name

    @property
    def image(self):
        return self._image

    @image.setter
    def image(self, image):
        if image and isinstance(image, Image):
            self._image = image
        elif isinstance(image, str):
            self._image = Image(image)
        else:
            self._image = None

    @image.deleter
    def image(self):
        self._image = None

    @property
    def config(self):
        output = {}
        if self.image:
            output['image'] = self.image.get()
        else:
            output['build'] = self.path

    def get(self):
        super().get(**{f'{self.name}': self.config})