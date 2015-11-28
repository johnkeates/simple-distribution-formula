{% if data['id'] == 'mysql1' %}
highstate_run:
  local.state.highstate:
    - tgt: mysql1
{% endif %}




deploy_app:
  salt.state:
    - tgt: {{ target }}
    - sls: winroles.webserver


    {% if data['id'] == 'mysql1' %}
    highstate_run:
      local.state.highstate:
        - tgt: mysql1
    {% endif %}
