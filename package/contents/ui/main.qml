/*
 * Copyright (C) 2020 by Marcel Richter <Richter02@protonmail.com>
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

import QtQuick 2
import QtWebEngine 1.7

import org.kde.plasma.plasmoid

WallpaperItem {
    WebEngineView{
        anchors.fill: parent
        url: wallpaper.configuration.DisplayPage
        zoomFactor: wallpaper.configuration.ZoomFactor
        backgroundColor: "black"
        onCertificateError: function (error) {
            if (wallpaper.configuration.InsecureHTTPS) {
                error.acceptCertificate()
            } else {
                error.rejectCertificate()
            }
        }
        settings.playbackRequiresUserGesture: false
    }
}
