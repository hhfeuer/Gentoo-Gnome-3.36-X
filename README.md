Unofficial Gentoo Gnome 3.36 on Xorg overlay
--------------------------------------------

Versions
--------

 - Gnome 3.36.2 (stable)

General information
-------------------

 - All ebuilds are keyworded amd64
 - Updated games not included
 - Portions taken from the Heather Gnome overlay
 - ebuilds derived from the 3.34 official Gentoo portage ebuilds

Usage
-----

## via local overlays

Create a `/etc/portage/repos.conf/Gnome-3.36-X.conf` file containing

```
[Gnome-3-36-X]
location = /usr/local/portage/Gnome-3-36-X
sync-type = git
sync-uri = https://github.com/hhfeuer/Gentoo-Gnome-3.36-X.git
priority=9999
```

Then run emerge --sync

## via layman

Add via layman:

	layman -o https://raw.github.com/hhfeuer/Gentoo-Gnome-3.36-X/master/repositories.xml -f -a Gnome-3-36-X

Then run layman -s Gnome-3-36-X


Needs
-----
package.accept_keywords:

	<net-libs/webkit-gtk-2.29 ~amd64
	=media-libs/grilo-0.3.12 ~amd64
	=media-plugins/grilo-plugins-0.3.11 ~amd64

package.use:

	>=dev-libs/libical-3.0.7 vala
	dev-libs/folks -tracker
	>=x11-libs/gtksourceview-3.24.7 vala
	>=net-libs/gnome-online-accounts-3.26.2 vala
	>=gui-libs/libhandy-0.0.9 vala

package.unmask:

	=dev-libs/gjs-1.64.0
	
