To get this working I:

* As root (sudo su --login)
  * ausearch -c firefox --raw | audit2allow -M mypol
  * semodule -i mypol.pp
* fixed some dbus problems as shown in http://www.torkwrench.com/2011/12/16/d-bus-library-appears-to-be-incorrectly-set-up-failed-to-read-machine-uuid-failed-to-open-varlibdbusmachine-id/
  * dnf installed dbus
  * added dbus-uuidgen > /var/lib/dbus/machine-id to the Dockerfile