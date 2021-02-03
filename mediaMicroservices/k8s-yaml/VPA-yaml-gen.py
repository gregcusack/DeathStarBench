
import glob
import os

print("hello")


os.system("find . -name '*-vpa.yaml' -delete")
yaml_files_names = glob.glob("*.yaml")

for yaml_file_name in yaml_files_names:
	deployement_name = yaml_file_name.split('.')[0]
	print(deployement_name)
	file_content = '''apiVersion: autoscaling.k8s.io/v1
kind: VerticalPodAutoscaler
metadata:
  name: ''' + deployement_name+'''-vpa
  namespace: media-microsvc
spec:
  targetRef:
    apiVersion: "apps/v1"
    kind:       Deployment
    name:       ''' + deployement_name + '''
  updatePolicy:
    updateMode: "Auto"'''
	f = open(deployement_name +"-vpa.yaml", "w")
	f.write(file_content)
	f.close()

