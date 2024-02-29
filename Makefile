# run ansible playbook
setup-server:
	ansible-playbook -i inventory.yml bootstrap.yml
