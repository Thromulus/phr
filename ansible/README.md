## How to run playbook
```
ansible-galaxy install -p roles/ -r roles/requirements.yml
ansible-playbook -i hosts setup.yaml -v -u your_username --ask-become