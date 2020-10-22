import yaml

class DockerCompose:
    def __init__(self, name, version=3):
        self.name = name
        self.data = {
            'version': f'{version}',
            'services': {

            }
        }

    def create(self):
        return yaml.dump(self.data)

class Service:
    def __init__(self):
        pass

    @property
    def config(self):
        return

    def get(self):
        return self.config

docker_compose = DockerCompose()

print(docker_compose.create())