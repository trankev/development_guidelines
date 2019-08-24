bash
====

rules
-----

Set headers for stricter behaviour
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

    set -o errexit  # exit if a comamnd exited with a status code
    set -o nounset  # disallow used of unset variables
    set -o pipefail  # consider return code of all commands in a pipe, not just the last
    IFS=$'\n\t'  # do not consider spaces as a separator for lists

resources
---------

* `Unofficial bash "strict mode" <http://redsymbol.net/articles/unofficial-bash-strict-mode/>`_
* `Google shell style guide <https://google.github.io/styleguide/shell.xml>`_
