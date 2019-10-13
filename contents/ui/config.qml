/*
 * Copyright (C) 2019 by Marcel Richter <Marcel-Richter-02@protonmail.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Library General Public License as
 * published by the Free Software Foundation; either version 2 or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details
 *
 * You should have received a copy of the GNU Library General Public
 * License along with this program; if not, write to the
 * Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.13
import QtQuick.Layouts 1.13
import QtQuick.Controls 2.13

ColumnLayout {
    id: root
    property alias cfg_DisplayPage: textField.text

    RowLayout {
        spacing: units.largeSpacing / 2

        // To allow aligned integration in the settings form,
        // "formAlignment" is a property injected by the config containment
        // which defines the offset of the value fields
        Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight

            // use i18nd in config QML, as the default textdomain is set to that of the config container
            text: i18nd("plasma_wallpaper_de.unkn0wn.htmlwallpaper", "URL:")
        }
        TextField {
            id: textField
            Layout.fillWidth: true
        }
    }
    
    RowLayout {
        spacing: units.largeSpacing / 2

        Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight

            text: i18nd("plasma_wallpaper_de.unkn0wn.htmlwallpaper", "Web:")
        }
        Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignLeft

            text: i18nd("plasma_wallpaper_de.unkn0wn.htmlwallpaper", " https://yourwebsite.com")
        }
    }
    
    RowLayout {
        spacing: units.largeSpacing / 2

        Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignRight

            text: i18nd("plasma_wallpaper_de.unkn0wn.htmlwallpaper", "Local:")
        }
        Label {
            Layout.minimumWidth: width
            Layout.maximumWidth: width
            width: formAlignment - units.largeSpacing
            horizontalAlignment: Text.AlignLeft

            text: i18nd("plasma_wallpaper_de.unkn0wn.htmlwallpaper", " file:///absolute/path/to/your/website.html")
        }
    }

    Item { // tighten layout
        Layout.fillHeight: true
    }
}
