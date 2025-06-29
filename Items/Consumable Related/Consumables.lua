--[[
 * Consumables.lua
 * This file is part of Mod of Theseus
 *
 * Copyright (C) 2025 Mod of Theseus
 *
 * Mod of Theseus is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * Mod of Theseus is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Mod of Theseus; if not, see <https://www.gnu.org/licenses/>.
]]

SMODS.Consumable {
    key = "bermuda",
    set = "Spectral",
    atlas = "PLH",
    hidden = true,
    pos = {x = 2, y = 2},
    can_use = function(self, card)
        return #G.jokers.cards < G.jokers.config.card_limit
    end,
    use = function(self, card, area, copier)
        SMODS.add_card{
            set = "Joker",
            rarity = "mot_omega"
        }

        if G.GAME.dollars ~= -20 then
            ease_dollars(-(G.GAME.dollars + 20), true)
        end
    end
}

SMODS.ConsumableType {
    object_type = "ConsumableType",
    key = "Theseus",
	primary_colour = HEX("dbc6a0"),
	secondary_colour = HEX("dbc6a0"),
    collection_rows = { 4, 4 },
    shop_rate = 0.0,
	loc_txt = {
		collection = 'Theseus Cards',
		name = 'Theseus'
	},
    default = "c_mot_ancient_oars",
    can_stack = true,
    can_divide = true,
}

SMODS.Consumable {
    key = "mot_ancient_oars",
    set = "Theseus",
    atlas = "PLH",
    pos = {x = 0, y = 0},
    loc_txt = {
        name = "Ancient Oars",
        text = { "Something something" },
    }
}

SMODS.ConsumableType {
    key = 'maintenance',
    collection_rows = {7, 7, 7},
    primary_colour = G.C.CHIPS,
    secondary_colour = HEX('76a7a4'),
    loc_txt = {
        collection = 'Maintenance Cards',
        name = 'Maintenance'
    },
    shop_rate = 0.4
}

SMODS.ConsumableType {
    key = 'det_tarot',
    collection_rows = {7, 7, 7},
    primary_colour = G.C.CHIPS,
    secondary_colour = HEX('a3589d'),
    loc_txt = {
        collection = 'Deteriorated Tarots',
        name = 'Det. Tarot'
    },
    shop_rate = 0.4
}

SMODS.ConsumableType {
    key = 'det_planet',
    collection_rows = {7, 7, 7},
    primary_colour = G.C.CHIPS,
    secondary_colour = HEX('0067c6'),
    loc_txt = {
        collection = 'Deteriorated Planets',
        name = 'Det. Planet'
    },
    shop_rate = 0.4
}

SMODS.ConsumableType {
    key = 'det_spectral',
    collection_rows = {7, 7, 7},
    primary_colour = G.C.CHIPS,
    secondary_colour = HEX('0000ff'),
    loc_txt = {
        collection = 'Deteriorated Spectrals',
        name = 'Det. Spectral'
    },
}
