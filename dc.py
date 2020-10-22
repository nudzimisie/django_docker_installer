import yaml
from dc_services import Service
from dc_abstracts import AttributePrototype

class DockerCompose(AttributePrototype):
    def __init__(self, name: str, version=3):
        self.name = name
        self.version = version
        self.services = {}

    def add_service(self, service: Service):
        self.services.update(service.get())

    @property
    def data(self):
        return {
            'version': self.version,
            'services': self.services,
        }

    def make(self):
        return yaml.dump(self.data)

docker_compose = DockerCompose('test')

print(docker_compose.make())