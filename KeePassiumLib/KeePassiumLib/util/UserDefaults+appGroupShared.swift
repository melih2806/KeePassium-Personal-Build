//  KeePassium Password Manager
//  Copyright © 2018-2025 KeePassium Labs <info@keepassium.com>
// 
//  This program is free software: you can redistribute it and/or modify it
//  under the terms of the GNU General Public License version 3 as published
//  by the Free Software Foundation: https://www.gnu.org/licenses/).
//  For commercial licensing, please contact the author.

import Foundation

public extension UserDefaults {
    static var appGroupShared: UserDefaults {
        // Personal build: fall back to standard defaults when the app group
        // container is not available (e.g. sideloaded free-provisioned build).
        return UserDefaults(suiteName: AppGroup.id) ?? .standard
    }

    static func eraseAppGroupShared() {
        appGroupShared.removePersistentDomain(forName: AppGroup.id)
    }
}
