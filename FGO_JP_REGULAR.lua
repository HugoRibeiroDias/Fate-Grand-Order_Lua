--デフォルト
dir = scriptPath()
setImagePath(dir .. "image_JP")
stageCountRegion = Region(1724,24,38,50)
NotJPserverForStaminaRefillExtraClick = 1

--スタミナ自動補充
Refill_or_Not = 0
Use_Stone = 0
How_Many = 0

--[[
オートスキル:
',' = ターン数
',#,' = BATTLE 数
'0' = 1回ターンスキップする

サーヴァントスキル = a b c	d e f	g h i
マスタースキル = j k l
スキルの使用対象 = 1 2 3
宝具使用 = 4 5 6

コマンドは "" の間に入力してください。

例:
Skill_Command = "bce,0,f3hi,#,j2d,#,4,a1g3"

BATTLE 1:
第1回 - サーヴァント 1 のスキル b, c, サーヴァント 2 のスキル e
第2回 - スキップする
第3回 - サーヴァント 2 のスキル f を使ってサーヴァント 3 を対象とする, サーヴァント 3 のスキル h, i

BATTLE 2:
第1回 - マスタースキル j を使ってサーヴァント 2 を対象とする, サーヴァント 2 のスキル d

BATTLE 3:
第1回 - サーヴァント 1 の宝具を使う
第2回 - サーヴァント 1 のスキル a を使って自分を対象とする, サーヴァント 3 のスキル g を使って自分を対象とする

Skill_Confirmation: OFF = 0
(ゲーム中はスキル使用確認ウィンドウがある場合) ON = 1
]]
Enable_Autoskill = 0
Skill_Confirmation = 0
Skill_Command = ""

--イベントステージ終了時にて別枠がある場合（もう一つのポイント報酬ウィンドウとか、詳細はウェブのreadmeで）
isEvent = 0

dofile(dir .. "regular.lua")