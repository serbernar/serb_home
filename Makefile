# run ansible playbook
setup-server:
	ansible-playbook -i inventory.yml bootstrap.yml

sync-homarr:
	rsync -chavzP -e "ssh -p 22" sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/homarr/configs/default.json tools/homarr/configs/default.json