FROM odoo:17.0

USER root

RUN mkdir -p /etc/odoo

COPY ./odoo.conf /etc/odoo/odoo.conf

USER odoo

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]