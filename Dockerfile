FROM odoo:19.0

USER root

RUN mkdir -p /mnt/extra-addons /etc/odoo

COPY ./addons /mnt/extra-addons
COPY ./odoo.conf /etc/odoo/odoo.conf

RUN chown -R odoo:odoo /mnt/extra-addons /etc/odoo

USER odoo

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
