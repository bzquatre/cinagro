FROM odoo:17.0

COPY ./odoo.conf /etc/odoo/odoo.conf

RUN chown -R odoo:odoo /etc/odoo

USER odoo

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]