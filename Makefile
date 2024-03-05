# run ansible playbook
setup-server:
	ansible-playbook -i inventory.yml bootstrap.yml

sync-configs:
	rsync -chavzP -e "ssh -p 22" sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/homarr/configs/default.json tools/homarr/configs/default.json
	rsync -chavzP -e "ssh -p 22" sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/ha/config/custom_components/ tools/ha/config/custom_components/

sync-configs-to-server:
	rsync -chavzP -e "ssh -p 22" tools/ha/config/configuration.yaml sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/ha/config/configuration.yaml
	rsync -chavzP -e "ssh -p 22" tools/ha/config/climate.yaml sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/ha/config/climate.yaml
	rsync -chavzP -e "ssh -p 22" tools/ha/config/custom_components/terneo sberebko@192.168.0.159:/home/sberebko/code/serb_home/tools/ha/config/custom_components/terneo