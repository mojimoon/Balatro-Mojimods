--- STEAMODDED HEADER
--- MOD_NAME: Moji's Jokers
--- MOD_ID: MojiJoker
--- MOD_AUTHOR: [Mojimoon]
--- MOD_DESCRIPTION: A collection of custom Jokers by Mojimoon.

----------------------------------------------
------------MOD CODE -------------------------

local MOD_ID = "MojiJoker"
local MOD_VERSION = "20240406.2"

local loc_en = {
    j_moji_color_out_of_space = {
        name = "Color Out of Space",
        text = {
            "Gain {X:mult,C:white}X#1#{} multiplier per",
            "consecutive hand containing {C:attention}#3#{}",
            "Otherwise reset",
            "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
        }
    },
    j_moji_garbage_time = {
        name = "Garbage Time",
        text = {
            "{X:mult,C:white}X#2#{} Mult,",
            "loses {X:mult,C:white}X#1#{} Mult",
            "if more than {C:attention}1{} hands are played",
            "by the end of the round"
        }
    },
    j_moji_new_order = {
        name = "The New Order",
        text = {
            "{X:mult,C:white}X#1#{} Mult when {C:attention}#4#{}",
            "is played and scored",
            "Rank decreases by {C:attention}1{} after each trigger",
            "{C:inactive}(A, K, Q, ..., 2, A)",
            "Loses {X:mult,C:white}X#2#{} Mult",
            "if a hand fails to trigger the New Order",
            "{C:inactive}(Currently {X:mult,C:white} X#3# {C:inactive} Mult)"
        }
    },
    j_moji_quantization = {
        name = "Quantization",
        text = {
            "If at least {C:attention}#3#{} scoring cards",
            "are played in one hand,",
            "{C:mult}+#1#{} Mult per scoring card",
            "Otherwise reset",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        }
    },
    j_moji_satellite_payment = {
        name = "Satellite Payment",
        text = {
            "All items in shop are {C:money}$#1#{} cheaper",
            "per unique {C:planet} planet card used this run",
            "{C:inactive}(Price cannot go below {C:money}$1{C:inactive})",
            "{C:inactive}(Currently {C:money}-$#2#{C:inactive})"
        }
    },
    j_moji_transcendence = {
        name = "Transcendence",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create a copy of {C:tarot}The Hanged Man{}", 
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_calamity_star = {
        name = "Calamity Star",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create a copy of {C:tarot}The Star{}",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_crescent_moon = {
        name = "Crescent Moon",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create a copy of {C:tarot}The Moon{}",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_solar_eclipse = {
        name = "Solar Eclipse",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create a copy of {C:tarot}The Sun{}",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_doomed_world = {
        name = "Doomed World",
        text = {
            "When {C:attention}Blind{} is selected,",
            "create a copy of {C:tarot}The World{}",
            "{C:inactive}(Must have room)"
        }
    },
    j_moji_sisyphus = {
        name = "Sisyphus",
        text = {
            "When {C:attention}Blind{} is selected,",
            "enhances all cards of a randomly chosen",
            "{C:attention}rank{} in your deck to {C:attention}Stone Cards{}",
            "Gains {X:mult,C:white}X#1#{} Mult per Stone Card",
            "created by Sisyphus",
            "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)"
        }
    },
    j_moji_pursue_the_stars = {
        name = "Pursue the Stars",
        text = {
            "{C:mult}+#1#{} Mult for each",
            "{C:diamonds}#3#{} card, except the first",
            "{C:attention}#4#{} in your full deck",
            "{C:inactive}(Effective suit is used)",
            "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)"
        }
    },
    j_moji_embrace_the_moon = {
        name = "Embrace the Moon",
        text = {
            "Earn {C:money}$#1#{}",
            "for every {C:attention}#3#{} {C:clubs}#2#{} card",
            "in the remaining deck",
            "at the end of the round",
            "{C:inactive}(Effective suit is used)"
        }
    },
    j_moji_hold_the_sun = {
        name = "Hold the Sun",
        text = {
            "Once per round,",
            "{C:attention}upgrade{} the played poker hand",
            "if a {C:hearts}#1#{} card is played and scored"
        }
    },
    j_moji_salvage_the_world = {
        name = "Salvage the World",
        text = {
            "{C:chips}+#1#{} Chips",
            "per {C:spades}#2#{} card in your hand"
        }
    },
    j_moji_well_laid_plans = {
        name = "Well-Laid Plans",
        text = {
            "{C:attention}Upgrade{} level of played poker hand",
            "if it is a {C:attention}#1#{}",
            "Poker hand changes after each {C:attention}discard{}"
        }
    },
    j_moji_best_of_three = {
        name = "Best-of-Three",
        text = {
            "{C:attention}Upgrade{} level of played poker hand",
            "each time it is played {C:attention}#1#{} times",
            "in the same round"
        }
    },
    j_moji_binoculars = {
        name = "Binoculars",
        text = {
            "When a {C:planet} planet card is used,",
            "use it {C:attention}#1#{} more time"
        }
    },
    j_moji_tax_collector = {
        name = "Tax Collector",
        text = {
            "Earn {C:blue}$#1#{}/{C:green}$#2#{}/{C:red}$#3#{}/{C:legendary}$#4#{}",
            "for each Joker based on its rarity",
            "at the end of the round"
        }
    },
    j_moji_ancient_pact = {
        name = "Ancient Pact",
        text = {
            "{C:green}Uncommon{}, {C:red}Rare{} Jokers and {C:blue}Edition{}",
            "are {C:attention}#1#%{} more likely to appear",
            -- "{C:legendary}Legendary{} Jokers can appear naturally"
        }
    }
}

local loc_zh = {
    j_moji_color_out_of_space = {
        name = "星之彩",
        text = {
            "连续打出包含{C:attention}#3#{}的牌时，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "否则重置倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#2# {C:inactive}倍率）"
        }
    },
    j_moji_garbage_time = {
        name = "垃圾时间",
        text = {
            "{X:mult,C:white}X#2#{}倍率",
            "若回合结束时，所用",
            "出牌次数超过{C:attention}1{}，",
            "失去{X:mult,C:white}X#1#{}倍率"
        }
    },
    j_moji_new_order = {
        name = "新秩序",
        text = {
            "打出{C:attention}#4#{}并计分时，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "每次触发后目标点数{C:attention}-1{}",
            "{C:inactive}（A、K、Q、……、2、A）",
            "若一次出牌未触发新秩序，",
            "失去{X:mult,C:white}X#2#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#3# {C:inactive}倍率）"
        }
    },
    j_moji_quantization = {
        name = "量(子)化",
        text = {
            "同时打出至少{C:attention}#3#{}张计分牌时，",
            "每有1张计分牌，获得{C:mult}+#1#{}倍率",
            "否则重置倍率",
            "{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）"
        }
    },
    j_moji_satellite_payment = {
        name = "卫星支付",
        text = {
            "本局游戏每使用过一种{C:planet}星球牌",
            "所有商品价格降低{C:money}$#1#{}",
            "{C:inactive}（价格不会低于{C:money}$1{C:inactive}）",
            "{C:inactive}（当前为{C:money}-$#2#{C:inactive}）"
        }
    },
    j_moji_transcendence = {
        name = "超凡升天",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}倒吊人{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_calamity_star = {
        name = "灾星",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}星星{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_crescent_moon = {
        name = "残月",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}月亮{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_solar_eclipse = {
        name = "日食",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}太阳{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_doomed_world = {
        name = "末世",
        text = {
            "选择{C:attention}盲注{}后",
            "生成一张{C:tarot}世界{}",
            "{C:inactive}（必须有空位）"
        }
    },
    j_moji_sisyphus = {
        name = "西西弗斯",
        text = {
            "选择{C:attention}盲注{}后",
            "随机选择一种{C:attention}点数{}",
            "将牌组中该点数的牌增强为{C:attention}石头牌{}",
            "西西弗斯每创建1张石头牌，",
            "获得{X:mult,C:white}X#1#{}倍率",
            "{C:inactive}（当前为{X:mult,C:white} X#2# {C:inactive}倍率）"
        }
    },
    j_moji_pursue_the_stars = {
        name = "逐星",
        text = {
            "完整牌组中的{C:diamonds}#3#{}牌",
            "每比{C:attention}#4#{}张多1张，",
            "获得{C:mult}+#1#{}倍率",
            "{C:inactive}（按有效花色计算）",
            "{C:inactive}（当前为{C:mult}+#2#{C:inactive}倍率）"
        }
    },
    j_moji_embrace_the_moon = {
        name = "捧月",
        text = {
            "回合结束时，剩余牌组中",
            "每有{C:attention}#3#{}张{C:clubs}#2#{}牌，",
            "获得{C:money}$#1#{}",
            "{C:inactive}（按有效花色计算）"
        }
    },
    j_moji_hold_the_sun = {
        name = "执日",
        text = {
            "每回合首次",
            "打出{C:hearts}#1#{}牌并计分时，",
            "{C:attention}升级{}出牌牌型"
        }
    },
    j_moji_salvage_the_world = {
        name = "救世",
        text = {
            "手牌中的每张{C:spades}#2#{}牌",
            "给予{C:chips}+#1#{}筹码"
        }
    },
    j_moji_well_laid_plans = {
        name = "计划妥当",
        text = {
            "若出牌牌型为{C:attention}#1#{}，",
            "将其{C:attention}升级{}",
            "每次{C:attention}弃牌{}后牌型都会改变"
        }
    },
    j_moji_best_of_three = {
        name = "BO3",
        text = {
            "每在同一回合中",
            "打出同一牌型{C:attention}#1#{}次，",
            "将其升级"
        }
    },
    j_moji_binoculars = {
        name = "双筒望远镜",
        text = {
            "使用{C:planet}星球牌{}时，",
            "再使用{C:attention}#1#{}次"
        }
    },
    j_moji_tax_collector = {
        name = "税收官",
        text = {
            "回合结束时，",
            "每张普通/罕见/稀有/传奇小丑牌",
            "分别提供{C:blue}$#1#{}/{C:green}$#2#{}/{C:red}$#3#{}/{C:legendary}$#4#{}"
        }
    },
    j_moji_ancient_pact = {
        name = "先古契约",
        text = {
            "{C:green}罕见{}、{C:red}稀有{}小丑牌和{C:blue}版本{}",
            "出现概率提高{C:attention}#1#%{}",
            -- "{C:legendary}传奇{}小丑牌可以自然出现"
        }
    },
}

local misc_loc_en = {
    k_timeup = "Time's up!"
}

local misc_loc_zh = {
    k_timeup = "时间到！"
}

local loc_txt = G.SETTINGS.language == "zh_CN" and loc_zh or loc_en
local misc_loc_txt = G.SETTINGS.language == "zh_CN" and misc_loc_zh or misc_loc_en

local jokers = {
    j_moji_color_out_of_space = {
        ability_name = "Color Out of Space",
        slug = "moji_color_out_of_space",
        ability = {extra = {Xmult_add = 0.5, type = 'Flush'}},
        rarity = 2,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_garbage_time = {
        ability_name = "Garbage Time",
        slug = "moji_garbage_time",
        ability = {Xmult = 3.5, extra = {Xmult_sub = 0.5}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_new_order = {
        ability_name = "The New Order",
        slug = "moji_new_order",
        ability = {extra = {Xmult_add = 0.2, Xmult_sub = 0.1, rank = 14}},
        rarity = 3,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_quantization = {
        ability_name = "Quantization",
        slug = "moji_quantization",
        ability = {extra = {mult_add = 1, min_cards = 3}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_satellite_payment = {
        ability_name = "Satellite Payment",
        slug = "moji_satellite_payment",
        ability = {extra = {price_sub = 1, planets_used = 0}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_transcendence = {
        ability_name = "Transcendence",
        slug = "moji_transcendence",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_calamity_star = {
        ability_name = "Calamity Star",
        slug = "moji_calamity_star",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_crescent_moon = {
        ability_name = "Crescent Moon",
        slug = "moji_crescent_moon",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_solar_eclipse = {
        ability_name = "Solar Eclipse",
        slug = "moji_solar_eclipse",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_doomed_world = {
        ability_name = "Doomed World",
        slug = "moji_doomed_world",
        ability = {},
        rarity = 1,
        cost = 5,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_sisyphus = {
        ability_name = "Sisyphus",
        slug = "moji_sisyphus",
        ability = {extra = {Xmult_add = 0.1}},
        rarity = 3,
        cost = 9,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_pursue_the_stars = {
        ability_name = "Pursue the Stars",
        slug = "moji_pursue_the_stars",
        ability = {extra = {mult = 4, suit = 'Diamonds', diff_base = 13}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_embrace_the_moon = {
        ability_name = "Embrace the Moon",
        slug = "moji_embrace_the_moon",
        ability = {extra = {dollars = 2, per = 3, suit = 'Clubs', trigger_cnt = 0}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_hold_the_sun = {
        ability_name = "Hold the Sun",
        slug = "moji_hold_the_sun",
        ability = {extra = {suit = 'Hearts', trigger_hand = -1}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_salvage_the_world = {
        ability_name = "Salvage the World",
        slug = "moji_salvage_the_world",
        ability = {extra = {chips = 100, suit = 'Spades', trigger_cnt = 0}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_well_laid_plans = {
        ability_name = "Well-Laid Plans",
        slug = "moji_well_laid_plans",
        ability = {extra = {poker_hand = 'High Card'}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_best_of_three = {
        ability_name = "Best-of-Three",
        slug = "moji_best_of_three",
        ability = {extra = {per = 2, trigger_table = {}, triggered_this_hand = false}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = true, eternal_compat = true
    },
    j_moji_binoculars = {
        ability_name = "Binoculars",
        slug = "moji_binoculars",
        ability = {extra = {repeat_times = 1}},
        rarity = 2,
        cost = 6,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_tax_collector = {
        ability_name = "Tax Collector",
        slug = "moji_tax_collector",
        ability = {extra = {dollars = 1}},
        rarity = 2,
        cost = 7,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    },
    j_moji_ancient_pact = {
        ability_name = "Ancient Pact",
        slug = "moji_ancient_pact",
        ability = {extra = {percent = 100, legendary_chance = 0.003}},
        rarity = 2,
        cost = 8,
        unlocked = true, discovered = true, blueprint_compat = false, eternal_compat = true
    }
}

local rank_to_str = {
    [2] = "2",
    [3] = "3",
    [4] = "4",
    [5] = "5",
    [6] = "6",
    [7] = "7",
    [8] = "8",
    [9] = "9",
    [10] = "10",
    [11] = "J",
    [12] = "Q",
    [13] = "K",
    [14] = "A"
}

function rank_dec(rank)
    return rank == 2 and 14 or rank - 1
end

function count_used_planets()
    local planets_used = 0
    for k, v in pairs(G.GAME.consumeable_usage) do 
        if v.set == 'Planet' then 
            planets_used = planets_used + 1 
        end 
    end
    return planets_used
end

function well_laid_plans_choose(old_hand)
    local _poker_hands = {}
    for k, v in pairs(G.GAME.hands) do
        if v.visible and k ~= old_hand then
            _poker_hands[#_poker_hands + 1] = k
        end
    end
    return pseudorandom_element(_poker_hands, pseudoseed('well_laid_plans'))
end

function count_base_suit(cards, suit)
    local count = 0
    for k, v in pairs(cards) do
        if v.base.suit == suit and v.ability.effect ~= 'Stone Card' then
            count = count + 1
        end
    end
    return count
end

function count_suit(cards, suit)
    local count = 0
    for k, v in pairs(cards) do
        if v:is_suit(suit) then
            count = count + 1
        end
    end
    return count
end

function SMODS.INIT.MojiJoker()
    for k, v in pairs(misc_loc_txt) do
        G.localization.misc.dictionary[k] = v
    end

    init_localization()

    for k, v in pairs(jokers) do
        local joker = SMODS.Joker:new(
            v.ability_name,
            v.slug,
            v.ability,
            {x = 0, y = 0},
            loc_txt[k],
            v.rarity,
            v.cost,
            v.unlocked, v.discovered, v.blueprint_compat, v.eternal_compat
        )
        joker:register()
        local sprite = SMODS.Sprite:new(
            "j_" .. v.slug,
            SMODS.findModByID(MOD_ID).path,
            "j_" .. v.slug .. ".png",
            71, 95, "asset_atli"
        )
        sprite:register()
    end

    -- Color Out of Space
    SMODS.Jokers.j_moji_color_out_of_space.calculate = function(self, context)
        if context.before and not context.blueprint then
            if next(context.poker_hands[self.ability.extra.type]) then
                self.ability.x_mult = self.ability.x_mult + self.ability.extra.Xmult_add
                return {
                    message = localize{type='variable',key='a_xmult',vars={self.ability.extra.Xmult_add}},
                    colour = G.C.MULT,
                    card = self
                }
            else
                if self.ability.x_mult > 1 then
                    self.ability.x_mult = 1
                    return {
                        card = self,
                        message = localize('k_reset')
                    }
                end
            end
        end
    end

    -- Garbage Time
    SMODS.Jokers.j_moji_garbage_time.calculate = function(self, context)
        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            if G.GAME.current_round.hands_played > 1 then
                local new_mult = self.ability.x_mult - self.ability.extra.Xmult_sub
                if new_mult <= 1 then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound('tarot1')
                            self.T.r = -0.2
                            self:juice_up(0.3, 0.4)
                            self.states.drag.is = true
                            self.children.center.pinch.x = true
                            G.E_MANAGER:add_event(Event({hand_trigger = 'after', delay = 0.3, blockable = false,
                                func = function()
                                        G.jokers:remove_card(self)
                                        self:remove()
                                        self = nil
                                    return true; end})) 
                            return true
                        end
                    }))
                    return {
                        message = localize('k_timeup'),
                        colour = G.C.FILTER
                    }
                else
                    self.ability.x_mult = new_mult
                    return {
                        message = localize{type='variable',key='a_xmult_minus',vars={self.ability.extra.Xmult_sub}},
                        colour = G.C.RED,
                        card = self
                    }
                end
            end
        end
    end

    -- The New Order
    SMODS.Jokers.j_moji_new_order.calculate = function(self, context)
        if context.before and not context.blueprint then
            local hand_trigger = 0
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:get_id() == self.ability.extra.rank then
                    hand_trigger = hand_trigger + 1
                    self.ability.extra.rank = rank_dec(self.ability.extra.rank)
                end
            end
            if hand_trigger > 0 then
                local add_mult = self.ability.extra.Xmult_add * hand_trigger
                self.ability.x_mult = self.ability.x_mult + add_mult
                return {
                    message = localize{type='variable',key='a_xmult',vars={add_mult}},
                    colour = G.C.MULT,
                    card = self
                }
            else
                self.ability.x_mult = self.ability.x_mult - self.ability.extra.Xmult_sub
                if self.ability.x_mult >= 1 then
                    return {
                        message = localize{type='variable',key='a_xmult_minus',vars={self.ability.extra.Xmult_sub}},
                        colour = G.C.RED,
                        card = self
                    }
                else
                    self.ability.x_mult = 1
                end
            end
        end
    end

    -- Quantization
    SMODS.Jokers.j_moji_quantization.calculate = function(self, context)
        if context.before and not context.blueprint then
            if #context.scoring_hand >= self.ability.extra.min_cards then
                local add_mult = self.ability.extra.mult_add * #context.scoring_hand
                self.ability.mult = self.ability.mult + add_mult
                return {
                    card = self,
                    message = localize{type='variable',key='a_mult',vars={add_mult}},
                }
            else
                if self.ability.mult > 0 then
                    self.ability.mult = 0
                    return {
                        card = self,
                        message = localize('k_reset')
                    }
                end
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.mult > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={self.ability.mult}},
                    colour = G.C.RED,
                    mult_mod = self.ability.mult
                }
            end
        end
    end

    -- Satellite Payment
    SMODS.Jokers.j_moji_satellite_payment.calculate = function(self, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == 'Planet' then
            self.ability.extra.planets_used = count_used_planets()
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
        end
    end

    -- Transcendence
    SMODS.Jokers.j_moji_transcendence.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_hanged_man', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})                       
                        return true
                    end)}))
            end
        end
    end

    -- Calamity Star
    SMODS.Jokers.j_moji_calamity_star.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_star', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})                       
                        return true
                    end)}))
            end
        end
    end

    -- Crescent Moon
    SMODS.Jokers.j_moji_crescent_moon.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_moon', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})                       
                        return true
                    end)}))
            end
        end
    end

    -- Solar Eclipse
    SMODS.Jokers.j_moji_solar_eclipse.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_sun', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})                       
                        return true
                    end)}))
            end
        end
    end

    -- Doomed World
    SMODS.Jokers.j_moji_doomed_world.calculate = function(self, context)
        if context.setting_blind then
            if not (context.blueprint_card or self).getting_sliced and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                G.E_MANAGER:add_event(Event({
                    func = (function()
                        G.E_MANAGER:add_event(Event({
                            func = function() 
                                local card = create_card('Tarot',G.consumeables, nil, nil, nil, nil, 'c_world', nil)
                                card:add_to_deck()
                                G.consumeables:emplace(card)
                                G.GAME.consumeable_buffer = 0
                                return true
                            end}))   
                            card_eval_status_text(context.blueprint_card or self, 'extra', nil, nil, nil, {message = localize('k_plus_tarot'), colour = G.C.PURPLE})                       
                        return true
                    end)}))
            end
        end
    end
    
    -- Sisyphus
    SMODS.Jokers.j_moji_sisyphus.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            local non_stone_cards = {}
            for i = 1, #G.deck.cards do
                if G.deck.cards[i].ability.effect ~= 'Stone Card' then
                    non_stone_cards[#non_stone_cards + 1] = G.deck.cards[i]
                end
            end
            if #non_stone_cards == 0 then return end
            local target_rank = pseudorandom_element(non_stone_cards, pseudoseed('sisyphus')):get_id()
            local stones_created = 0
            for i = 1, #G.deck.cards do
                if G.deck.cards[i]:get_id() == target_rank then
                    if G.deck.cards[i].ability.effect ~= 'Stone Card' then
                        G.deck.cards[i]:set_ability(G.P_CENTERS.m_stone)
                        stones_created = stones_created + 1
                    end
                end
            end
            if stones_created > 0 then
                local add_mult = self.ability.extra.Xmult_add * stones_created
                self.ability.x_mult = self.ability.x_mult + add_mult
                return {
                    message = localize{type='variable',key='a_xmult',vars={add_mult}},
                    colour = G.C.MULT,
                    card = self
                }
            end
        end
    end

    -- Pursue the Stars
    SMODS.Jokers.j_moji_pursue_the_stars.calculate = function(self, context)
        if SMODS.end_calculate_context(context) then
            local diff = count_suit(G.playing_cards, self.ability.extra.suit) - self.ability.extra.diff_base
            if diff > 0 then
                return {
                    message = localize{type='variable',key='a_mult',vars={diff * self.ability.extra.mult}},
                    colour = G.C.MULT,
                    mult_mod = diff * self.ability.extra.mult
                }
            end
        end
    end

    -- Embrace the Moon
    SMODS.Jokers.j_moji_embrace_the_moon.calculate = function(self, context)
        if context.setting_blind and not context.blueprint then
            self.ability.extra.trigger_cnt = 0
        end

        if context.end_of_round and not context.individual and not context.repetition and not context.blueprint then
            self.ability.extra.trigger_cnt = count_suit(G.deck.cards, self.ability.extra.suit)
        end
    end

    -- Hold the Sun
    SMODS.Jokers.j_moji_hold_the_sun.calculate = function(self, context)
        if context.setting_blind and not self.getting_sliced and not context.blueprint then
            self.ability.extra.trigger_hand = -1
        end

        if context.before then
            if self.ability.extra.trigger_hand ~= -1 and G.GAME.current_round.hands_played > self.ability.extra.trigger_hand then return end
            local has_hearts = false
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i]:is_suit(self.ability.extra.suit) and not context.scoring_hand[i].debuff then
                    has_hearts = true
                    break
                end
            end
            if has_hearts then
                self.ability.extra.trigger_hand = G.GAME.current_round.hands_played
                return {
                    card = self,
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end
    end

    -- Salvage the World
    SMODS.Jokers.j_moji_salvage_the_world.calculate = function(self, context)
        if context.before then
            self.ability.extra.trigger_cnt = 0
        end

        if context.individual and not context.blueprint then
            if context.cardarea == G.hand then
                if context.other_card:is_suit(self.ability.extra.suit) and not context.other_card.debuff then
                    self.ability.extra.trigger_cnt = self.ability.extra.trigger_cnt + 1
                    return {
                        card = context.other_card
                    }
                end
            end
        end

        if SMODS.end_calculate_context(context) then
            if self.ability.extra.trigger_cnt > 0 then
                return {
                    message = localize{type='variable',key='a_chips',vars={self.ability.extra.chips * self.ability.extra.trigger_cnt}},
                    colour = G.C.CHIPS,
                    chip_mod = self.ability.extra.chips * self.ability.extra.trigger_cnt
                }
            end
        end
    end

    -- Well-Laid Plans
    SMODS.Jokers.j_moji_well_laid_plans.calculate = function(self, context)
        if context.before then
            if context.scoring_name == self.ability.extra.poker_hand then
                return {
                    card = self,
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end

        if context.discard and not context.blueprint and context.other_card == context.full_hand[#context.full_hand] then
            local new_hand = well_laid_plans_choose(self.ability.extra.poker_hand)
            if new_hand then
                self.ability.extra.poker_hand = new_hand
                return {
                    card = self,
                    message = localize(new_hand, 'poker_hands')
                }
            end
        end
    end

    -- Best-of-Three
    SMODS.Jokers.j_moji_best_of_three.calculate = function(self, context)
        if context.setting_blind and not context.blueprint and not self.getting_sliced then
            for k, v in pairs(G.GAME.hands) do
                self.ability.extra.trigger_table[k] = 0
            end
        end

        if context.before and not context.individual and not context.repetition then
            if not self.ability.extra.triggered_this_hand then
                self.ability.extra.trigger_table[context.scoring_name] = self.ability.extra.trigger_table[context.scoring_name] + 1
                self.ability.extra.triggered_this_hand = true
            end
            if self.ability.extra.trigger_table[context.scoring_name] % self.ability.extra.per == 0 then
                return {
                    card = self,
                    level_up = true,
                    message = localize('k_level_up_ex')
                }
            end
        end

        if context.after and not context.blueprint then
            self.ability.extra.triggered_this_hand = false
        end
    end

    -- Binoculars
    
    -- Tax Collector
    
    -- Ancient Pact
end

function Card:set_cost()
    self.extra_cost = 0 + G.GAME.inflation
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Satellite Payment' then
                self.extra_cost = self.extra_cost - G.jokers.cards[i].ability.extra.planets_used * G.jokers.cards[i].ability.extra.price_sub
            end
        end
    end
    if self.edition then
        self.extra_cost = self.extra_cost + (self.edition.holo and 3 or 0) + (self.edition.foil and 2 or 0) + 
        (self.edition.polychrome and 5 or 0) + (self.edition.negative and 5 or 0)
    end
    self.cost = math.max(1, math.floor((self.base_cost + self.extra_cost + 0.5)*(100-G.GAME.discount_percent)/100))
    if self.ability.set == 'Booster' and G.GAME.modifiers.booster_ante_scaling then self.cost = self.cost + G.GAME.round_resets.ante - 1 end
    if self.ability.set == 'Booster' and (not G.SETTINGS.tutorial_complete) and G.SETTINGS.tutorial_progress and (not G.SETTINGS.tutorial_progress.completed_parts['shop_1']) then
        self.cost = self.cost + 3
    end
    if (self.ability.set == 'Planet' or (self.ability.set == 'Booster' and self.ability.name:find('Celestial'))) and #find_joker('Astronomer') > 0 then self.cost = 0 end
    self.sell_cost = math.max(1, math.floor(self.cost/2)) + (self.ability.extra_value or 0)
    if self.area and self.ability.couponed and (self.area == G.shop_jokers or self.area == G.shop_booster) then self.cost = 0 end
    self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
end

local Card_add_to_deck_ref = Card.add_to_deck
function Card:add_to_deck(from_debuff)
    if not self.added_to_deck then
        if self.ability.name == 'Satellite Payment' then
            self.ability.extra.planets_used = count_used_planets()
            G.E_MANAGER:add_event(Event({func = function()
                for k, v in pairs(G.I.CARD) do
                    if v.set_cost then v:set_cost() end
                end
                return true end }))
            self.added_to_deck = true
        end
    end
    Card_add_to_deck_ref(self, from_debuff)
end

local Card_remove_from_deck_ref = Card.remove_from_deck
function Card:remove_from_deck(from_debuff)
    if self.added_to_deck then
        self.added_to_deck = false
        G.E_MANAGER:add_event(Event({func = function()
            for k, v in pairs(G.I.CARD) do
                if v.set_cost then v:set_cost() end
            end
            return true end }))
    end
    Card_remove_from_deck_ref(self, from_debuff)
end

local Card_set_ability_ref = Card.set_ability
function Card:set_ability(center, initial, delay_sprites)
    Card_set_ability_ref(self, center, initial, delay_sprites)
    if self.ability.name == 'Well-Laid Plans' then
        self.ability.extra.poker_hand = well_laid_plans_choose(nil)
    end
    if self.ability.name == 'Pursue the Stars' then
        self.ability.extra.diff_base = G.GAME.starting_deck_size / 4 or 13
    end
end

local Card_calculate_dollar_bonus_ref = Card.calculate_dollar_bonus
function Card:calculate_dollar_bonus()
    if self.debuff then return end
    if self.ability.set == 'Joker' then
        if self.ability.name == 'Embrace the Moon' then
            return self.ability.extra.dollars * math.floor(self.ability.extra.trigger_cnt / self.ability.extra.per)
        end
        if self.ability.name == 'Tax Collector' then
            local tax = 0
            for i = 1, #G.jokers.cards do
                tax = tax + self.ability.extra.dollars * (G.jokers.cards[i].config.center.rarity or 1)
            end
            return tax
        end
    end
    return Card_calculate_dollar_bonus_ref(self)
end

local G_FUNCS_use_card_ref = G.FUNCS.use_card
G.FUNCS.use_card = function(e, mute, nosave)
    e.config.button = nil
    local card = e.config.ref_table
    local area = card.area
    local prev_state = G.STATE
    local dont_dissolve = nil
    local delay_fac = 1

    if card:check_use() then 
        G.E_MANAGER:add_event(Event({func = function()
        e.disable_button = nil
        e.config.button = 'use_card'
        return true end }))
        return
    end

    local count_binoculars = 0
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Binoculars' then
                count_binoculars = count_binoculars + G.jokers.cards[i].ability.extra.repeat_times
            end
        end
    end

    if card.ability.set == 'Planet' and count_binoculars > 0 then
        -- todo: binoculars
        G.TAROT_INTERRUPT = G.STATE

        G.CONTROLLER.locks.use = true
        if G.booster_pack and not G.booster_pack.alignment.offset.py and (card.ability.consumeable or not (G.GAME.pack_choices and G.GAME.pack_choices > 1)) then
            G.booster_pack.alignment.offset.py = G.booster_pack.alignment.offset.y
            G.booster_pack.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.shop and not G.shop.alignment.offset.py then
            G.shop.alignment.offset.py = G.shop.alignment.offset.y
            G.shop.alignment.offset.y = G.ROOM.T.y + 29
        end
        if G.blind_select and not G.blind_select.alignment.offset.py then
            G.blind_select.alignment.offset.py = G.blind_select.alignment.offset.y
            G.blind_select.alignment.offset.y = G.ROOM.T.y + 39
        end
        if G.round_eval and not G.round_eval.alignment.offset.py then
            G.round_eval.alignment.offset.py = G.round_eval.alignment.offset.y
            G.round_eval.alignment.offset.y = G.ROOM.T.y + 29
        end
    
        if card.children.use_button then card.children.use_button:remove(); card.children.use_button = nil end
        if card.children.sell_button then card.children.sell_button:remove(); card.children.sell_button = nil end
        if card.children.price then card.children.price:remove(); card.children.price = nil end
    
        if card.area then card.area:remove_card(card) end

        if G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.PLANET_PACK or G.STATE == G.STATES.SPECTRAL_PACK then
            card.T.x = G.hand.T.x + G.hand.T.w/2 - card.T.w/2
            card.T.y = G.hand.T.y + G.hand.T.h/2 - card.T.h/2 - 0.5
            discover_card(card.config.center)
        else draw_card(G.hand, G.play, 1, 'up', true, card, nil, mute) end
        delay(0.2)
        for i = 0, count_binoculars do
            e.config.ref_table:use_consumeable(area)
            for i = 1, #G.jokers.cards do
                G.jokers.cards[i]:calculate_joker({using_consumeable = true, consumeable = card})
            end
        end

        G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.2,
        func = function()
            if not dont_dissolve then card:start_dissolve() end
            G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.1,
            func = function()
                G.STATE = prev_state
                G.TAROT_INTERRUPT=nil
                G.CONTROLLER.locks.use = false
                if (prev_state == G.STATES.TAROT_PACK or prev_state == G.STATES.PLANET_PACK or
                prev_state == G.STATES.SPECTRAL_PACK or prev_state == G.STATES.STANDARD_PACK or
                prev_state == G.STATES.BUFFOON_PACK) and G.booster_pack then
                if area == G.consumeables then
                    G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                    G.booster_pack.alignment.offset.py = nil
                elseif G.GAME.pack_choices and G.GAME.pack_choices > 1 then
                    if G.booster_pack.alignment.offset.py then 
                    G.booster_pack.alignment.offset.y = G.booster_pack.alignment.offset.py
                    G.booster_pack.alignment.offset.py = nil
                    end
                    G.GAME.pack_choices = G.GAME.pack_choices - 1
                else
                    G.CONTROLLER.interrupt.focus = true
                    if prev_state == G.STATES.TAROT_PACK then inc_career_stat('c_tarot_reading_used', 1) end
                    if prev_state == G.STATES.PLANET_PACK then inc_career_stat('c_planetarium_used', 1) end
                    G.FUNCS.end_consumeable(nil, delay_fac)
                end
                else
                if G.shop then 
                    G.shop.alignment.offset.y = G.shop.alignment.offset.py
                    G.shop.alignment.offset.py = nil
                end
                if G.blind_select then
                    G.blind_select.alignment.offset.y = G.blind_select.alignment.offset.py
                    G.blind_select.alignment.offset.py = nil
                end
                if G.round_eval then
                    G.round_eval.alignment.offset.y = G.round_eval.alignment.offset.py
                    G.round_eval.alignment.offset.py = nil
                end
                if area and area.cards[1] then 
                    G.E_MANAGER:add_event(Event({func = function()
                    G.E_MANAGER:add_event(Event({func = function()
                        G.CONTROLLER.interrupt.focus = nil
                        if card.ability.set == 'Voucher' then 
                        G.CONTROLLER:snap_to({node = G.shop:get_UIE_by_ID('next_round_button')})
                        elseif area then
                        G.CONTROLLER:recall_cardarea_focus(area)
                        end
                    return true end }))
                    return true end }))
                end
                end
            return true
        end}))
        return true
    end}))

        return
    end
    G_FUNCS_use_card_ref(e, mute, nosave)
end

local get_current_pool_ref = get_current_pool
function get_current_pool(_type, _rarity, _legendary, _append)
    if _legendary or _type ~= 'Joker' or _rarity then return get_current_pool_ref(_type, _rarity, _legendary, _append) end
    local ancient_pact_percent = 0
    -- local ancient_pact_legendary_chance = 0
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Ancient Pact' then
                ancient_pact_percent = ancient_pact_percent + G.jokers.cards[i].ability.extra.percent
                -- ancient_pact_legendary_chance = ancient_pact_legendary_chance + G.jokers.cards[i].ability.extra.percent
            end
        end
    end
    if ancient_pact_percent == 0 then return get_current_pool_ref(_type, _rarity, _legendary, _append) end

    local rarity = pseudorandom('rarity'..G.GAME.round_resets.ante..(_append or ''))
    -- local legendary = pseudorandom('legendary'..G.GAME.round_resets.ante..(_append or ''))
    -- if 1 - legendary < ancient_pact_legendary_chance then return get_current_pool_ref(_type, 4, true, _append) end
    local rarity_shift = (ancient_pact_percent + 100) / 100
    if rarity_shift >= 3 then rarity_shift = 3 end
    return get_current_pool_ref(_type, 1 - (1 - rarity) / rarity_shift, nil, _append)
end

local poll_edition_ref = poll_edition
function poll_edition(_key, _mod, _no_neg, _guaranteed)
    _mod = _mod or 1
    if _guaranteed then return poll_edition_ref(_key, _mod, _no_neg, _guaranteed) end
    local ancient_pact_percent = 0
    if G.jokers then
        for i = 1, #G.jokers.cards do
            if G.jokers.cards[i].ability.name == 'Ancient Pact' then
                ancient_pact_percent = ancient_pact_percent + G.jokers.cards[i].ability.extra.percent
            end
        end
    end
    if ancient_pact_percent == 0 then return poll_edition_ref(_key, _mod, _no_neg, _guaranteed) end

    _mod = _mod * (100 + ancient_pact_percent) / 100
    if G.GAME.edition_rate * _mod >= 25 then _mod = 25 / G.GAME.edition_rate end
    local edition_poll = pseudorandom(pseudoseed(_key or 'edition_generic'))
    if edition_poll > 1 - 0.003*_mod and not _no_neg then
        return {negative = true}
    elseif edition_poll > 1 - 0.006*G.GAME.edition_rate*_mod then
        return {polychrome = true}
    elseif edition_poll > 1 - 0.02*G.GAME.edition_rate*_mod then
        return {holo = true}
    elseif edition_poll > 1 - 0.04*G.GAME.edition_rate*_mod then
        return {foil = true}
    end
    return nil
end

-- Copied and modifed from LushMod
local generate_UIBox_ability_tableref = Card.generate_UIBox_ability_table
function Card.generate_UIBox_ability_table(self)
    local card_type, hide_desc = self.ability.set or "None", nil
    local loc_vars = nil
    local main_start, main_end = nil, nil
    local no_badge = nil

    if self.config.center.unlocked == false and not self.bypass_lock then
    elseif card_type == 'Undiscovered' and not self.bypass_discovery_ui then
    elseif self.debuff then
    elseif card_type == 'Default' or card_type == 'Enhanced' then
    elseif self.ability.set == 'Joker' then
        local customJoker = true
        if self.ability.name == 'Color Out of Space' then
            loc_vars = {
                self.ability.extra.Xmult_add,
                self.ability.x_mult,
                localize(self.ability.extra.type, 'poker_hands')
            }
        elseif self.ability.name == 'Garbage Time' then
            loc_vars = {
                self.ability.extra.Xmult_sub,
                self.ability.x_mult
            }
        elseif self.ability.name == 'The New Order' then
            loc_vars = {
                self.ability.extra.Xmult_add,
                self.ability.extra.Xmult_sub,
                self.ability.x_mult,
                rank_to_str[self.ability.extra.rank]
            }
        elseif self.ability.name == 'Quantization' then
            loc_vars = {
                self.ability.extra.mult_add,
                self.ability.mult,
                self.ability.extra.min_cards
            }
        elseif self.ability.name == 'Satellite Payment' then
            self.ability.extra.planets_used = count_used_planets()
            loc_vars = {
                self.ability.extra.price_sub,
                self.ability.extra.planets_used * self.ability.extra.price_sub
            }
        elseif self.ability.name == 'Transcendence' or self.ability.name == 'Calamity Star' or self.ability.name == 'Crescent Moon' or self.ability.name == 'Solar Eclipse' or self.ability.name == 'Doomed World' then
            loc_vars = {}
        elseif self.ability.name == 'Sisyphus' then
            loc_vars = {
                self.ability.extra.Xmult_add,
                self.ability.x_mult
            }
        elseif self.ability.name == 'Pursue the Stars' then
            local diff = G.playing_cards and (count_suit(G.playing_cards, self.ability.extra.suit) - self.ability.extra.diff_base) or 0
            loc_vars = {
                self.ability.extra.mult,
                diff * self.ability.extra.mult,
                localize(self.ability.extra.suit, 'suits_singular'),
                self.ability.extra.diff_base
            }
        elseif self.ability.name == 'Hold the Sun' then
            loc_vars = {localize(self.ability.extra.suit, 'suits_singular')}
        elseif self.ability.name == 'Salvage the World' then
            loc_vars = {
                self.ability.extra.chips,
                localize(self.ability.extra.suit, 'suits_singular')
            }
        elseif self.ability.name == 'Embrace the Moon' then
            loc_vars = {
                self.ability.extra.dollars,
                localize(self.ability.extra.suit, 'suits_singular'),
                self.ability.extra.per
            }
        elseif self.ability.name == 'Well-Laid Plans' then
            loc_vars = {localize(self.ability.extra.poker_hand, 'poker_hands')}
        elseif self.ability.name == 'Best-of-Three' then
            loc_vars = {self.ability.extra.per}
        elseif self.ability.name == 'Binoculars' then
            loc_vars = {self.ability.extra.repeat_times}
        elseif self.ability.name == 'Tax Collector' then
            loc_vars = {
                self.ability.extra.dollars,
                self.ability.extra.dollars * 2,
                self.ability.extra.dollars * 3,
                self.ability.extra.dollars * 4
            }
        elseif self.ability.name == 'Ancient Pact' then
            loc_vars = {self.ability.extra.percent}
        else
            customJoker = false
        end

        if customJoker then
            local badges = {}
            if (card_type ~= 'Locked' and card_type ~= 'Undiscovered' and card_type ~= 'Default') or self.debuff then
                badges.card_type = card_type
            end
            if self.ability.set == 'Joker' and self.bypass_discovery_ui and (not no_badge) then
                badges.force_rarity = true
            end
            if self.edition then
                if self.edition.type == 'negative' and self.ability.consumeable then
                    badges[#badges + 1] = 'negative_consumable'
                else
                    badges[#badges + 1] = (self.edition.type == 'holo' and 'holographic' or self.edition.type)
                end
            end
            if self.seal then
                badges[#badges + 1] = string.lower(self.seal) .. '_seal'
            end
            if self.ability.eternal then
                badges[#badges + 1] = 'eternal'
            end
            if self.pinned then
                badges[#badges + 1] = 'pinned_left'
            end

            if self.sticker then
                loc_vars = loc_vars or {};
                loc_vars.sticker = self.sticker
            end

            return generate_card_ui(self.config.center, nil, loc_vars, card_type, badges, hide_desc, main_start,
                main_end)
        end
    end
    return generate_UIBox_ability_tableref(self)
end

----------------------------------------------
------------MOD CODE END----------------------
