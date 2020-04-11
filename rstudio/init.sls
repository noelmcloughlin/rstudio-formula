# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import rstudio with context %}

include:
             {%- if grains.os_family in ('MacOS',) %}
  - .desktop
             {%- else %}
  - .server
  - .desktop
             {%- endif %}
