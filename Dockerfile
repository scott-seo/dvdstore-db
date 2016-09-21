# vim:set ft=dockerfile:
FROM postgres:9.6

COPY docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d

ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5432
CMD ["postgres"]
