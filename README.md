# ⚠️ ARCHIVED - This repository is no longer maintained

**This repository has been archived and is no longer actively maintained.**

This project was last updated on 2019-05-22 and is preserved for historical reference only.

- 🔒 **Read-only**: No new issues, pull requests, or changes will be accepted
- 📦 **No support**: This code is provided as-is with no support or updates
- 🔍 **For reference only**: You may fork this repository if you wish to continue development

For current CARTO projects and actively maintained repositories, please visit: https://github.com/CartoDB

---


# PL/Proxy

Sven Suursoho & Marko Kreen

## Installation

For installation there must be PostgreSQL dev environment installed
and `pg_config` in the PATH.   Then just run:

    $ make
    $ make install

To run regression tests:

    $ make installcheck

Location to `pg_config` can be set via `PG_CONFIG` variable:

    $ make PG_CONFIG=/path/to/pg_config
    $ make install PG_CONFIG=/path/to/pg_config
    $ make installcheck PG_CONFIG=/path/to/pg_config

Note: Encoding regression test fails if the Postres instance is not created with C locale.
It can be considered expected failure then.

