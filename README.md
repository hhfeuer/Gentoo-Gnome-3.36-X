WIP - use at own risk
--------------------------------------------

Needs
-----
package.accept_keywords:

	=app-misc/tracker-2.3.4 ~amd64
	=app-misc/tracker-miners-2.3.3 ~amd64
	=media-libs/grilo-0.3.12 ~amd64
	=media-plugins/grilo-plugins-0.3.11 ~amd64
	=dev-libs/totem-pl-parser-3.26.5 ~amd64
	=media-video/cheese-3.34.0-r1 ~amd64
	=media-gfx/gnome-font-viewer-3.34.0 ~amd64
	=app-text/enchant-2.2.7 ~amd64
	=app-text/gspell-1.8.3 ~amd64
	=dev-libs/folks-0.13.1 ~amd64
	=dev-util/glib-utils-2.62.5 ~amd64
	=dev-util/gdbus-codegen-2.62.5 ~amd64
	=dev-libs/glib-2.62.5 ~amd64
	=gnome-extra/gnome-weather-3.34.0 ~amd64
	=app-crypt/libsecret-0.20.1 ~amd64
	## for wayland
	=dev-libs/wayland-protocols-1.19 ~amd64

package.use:

	>=dev-libs/libical-3.0.7 vala
	dev-libs/folks -tracker
	>=x11-libs/gtksourceview-3.24.7 vala
	>=net-libs/gnome-online-accounts-3.26.2 vala
	>=gui-libs/libhandy-0.0.9 vala

