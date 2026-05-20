# 朔璃 / Soli 创作与制作流程档案

更新时间：2026-05-20  
项目路径：`/Users/the Soli rights holder/<local-workspace>/pets/moonwitch`

## 1. 定名

这款桌面宠物正式命名为：

- 中文名：**朔璃**
- 英文名：**Soli**
- 完整 IP 名：**月蚀魔女·朔璃 / Soli the Eclipse Witch**
- 技术包当前 id：`moonwitch`，暂不改 id，避免 Codex 宠物加载路径失效。

命名逻辑：

- **朔**：新月、暗月、月亮隐去的时刻，对应月蚀、反差、隐藏人格。
- **璃**：玻璃、水晶、清透感，对应银白淡紫的初始气质。
- **Soli**：短、好念、适合国际传播，可作为英文角色名和产品识别名。

## 2. 最终角色定位

朔璃不是普通“可爱桌宠”，而是一个面向 AI/Codex 使用场景的原创桌面少女伴侣。

一句话定位：

> Soli is an eclipse witch companion for AI builders: quiet in daily presence, intense in work mode, and sharply expressive in high-energy reactions.

中文定位：

> 朔璃是陪你使用 Codex 的月蚀小魔女。她平时安静看着你，工作时进入负片月蚀状态捧月施法，高能时切到更强烈的反差形态。

## 3. 核心 IP 机制

### 三形态系统

| 形态 | 用途 | 视觉方向 | Codex 状态 |
|---|---|---|---|
| 白月/原初形态 | 原画基底、清透人格 | 银白长发、淡紫眼、小魔女帽、透明袖 | 早期基础设定，后续可作为皮肤或低刺激模式 |
| 极夜紫月蚀 | 日常/等待/拖动 | 暗紫、银白、极夜感，保留漂亮与冷感 | `idle`, `waiting`, `running-left/right` |
| 负片月蚀 | 工作/审查 | 黑紫银白反相、蓝色月光、捧月施法 | `running`, `review` |
| 血月反差 | 高能/招牌动作 | 红黑白强对比，坏甜、灵动 | `waving`, `jumping`, `failed` 的部分方向 |

当前版本采用“状态行表达形态”，不是完整多皮肤系统。这样能在 Codex 固定 8×9 spritesheet 限制下先做出明显 IP 反差。

## 4. 设计决策脉络

### 4.1 初始审美锁定

用户偏好的核心：白、漂亮、轻灵、勾人、少女感、Q 版桌宠，同时要避免过度裸露和细碎装饰。参考气质包括胡桃、花火、时崎狂三、雷姆、柳智敏式脸部审美，但最终必须做成原创 OC。

早期白月版锁定：

- 银白长发。
- 紫色眼睛。
- 小魔女帽。
- 白 / 淡紫 / 银蓝主色。
- 透明袖。
- 月牙、水晶、细铃等少量核心符号。
- 不露明显沟线，显示轮廓但保持桌宠可发布尺度。

### 4.2 从“月亮魔女”升级为“月蚀魔女”

普通月亮魔女记忆点不足，因此将“月亮”从装饰升级为状态机制：

- 日常是清透、冷、漂亮。
- 工作时进入负片月蚀，双手捧月施法。
- 高能时切到红黑反差，形成传播点。

这比单纯堆月牙饰品更适合做 IP，因为用户记住的是“她会变”。

### 4.3 小尺寸桌宠原则

桌宠最终常见显示尺寸很小，所以制作中逐渐确立了几个规则：

- 优先保证脸、眼神、帽子轮廓、大色块。
- 放弃过多花纹和碎饰品。
- 形态反差必须发生在帽子、裙摆、袖子、姿态、表情这些大块面上。
- 不依赖眼睛小色点作为主变化。
- 高清不等于堆细节；高清是边缘干净、主体清楚、动作读得出来。

## 5. 当前最终版本

当前上线版本：`eclipse-edition-v0-clean6`

关键资产：

- 当前安装 spritesheet：`/Users/the Soli rights holder/.codex/pets/moonwitch/spritesheet.webp`
- clean6 spritesheet：`/Users/the Soli rights holder/<local-workspace>/pets/moonwitch/eclipse-edition-v0-clean6/final/spritesheet.webp`
- clean6 contact sheet：`/Users/the Soli rights holder/<local-workspace>/pets/moonwitch/eclipse-edition-v0-clean6/qa/contact-sheet.png`
- 工作态 GIF：`/Users/the Soli rights holder/<local-workspace>/pets/moonwitch/eclipse-edition-v0-clean6/qa/previews/running.gif`
- 证据清单：`/Users/the Soli rights holder/<local-workspace>/pets/moonwitch/ip-evidence/soli-evidence-manifest.json`

clean6 主要修复：

- 工作态 `running` 的“捧月”帧从 2/6 帧延长到 3/6 帧。
- 清理了捧月帧右侧 201 像素的独立碎片。
- 重新组装合法 8×9 / 192×208 atlas。
- 验证通过：无透明 RGB 残留、无 atlas 结构错误。

## 6. Codex 桌宠规格

Codex 当前宠物 spritesheet 固定为：

- 8 列 × 9 行。
- 每格 192×208。
- 总尺寸 1536×1872。
- 透明背景。

状态行：

| 行 | 状态 | 帧数 | 当前 Soli 设计 |
|---:|---|---:|---|
| 0 | `idle` | 6 | 极夜紫月蚀待机 |
| 1 | `running-right` | 8 | 拖动/移动向右 |
| 2 | `running-left` | 8 | 拖动/移动向左 |
| 3 | `waving` | 4 | 血月招呼/坏甜 |
| 4 | `jumping` | 5 | 血月高能跳跃 |
| 5 | `failed` | 8 | 失败/崩溃反应 |
| 6 | `waiting` | 6 | 等用户确认 |
| 7 | `running` | 6 | 负片月蚀工作台，双手捧月 |
| 8 | `review` | 6 | 负片月蚀审查/检查 |

注意：未使用的格子必须透明，不能为了“多帧”乱填。Codex 会按固定状态读取，多余格子不会自然变成额外帧。

## 7. 制作流程复盘

### 阶段 1：角色审美探索

产物：多版白月小魔女图。  
重点决策：确定银白长发、紫眼、小魔女帽、透明袖、白淡紫主色。

### 阶段 2：定稿白月 OC

产物：`source/moonwitch-final-source.png`。  
重点决策：保留白银淡紫的主体，但减少过多月牙装饰，保持角色完整性。

### 阶段 3：桌宠动作探索

产物：早期 `clean-build`、`idle-v2` 等。  
问题：部分动作换脸、换头发；部分版本有黑影、模糊、裁切残留。  
结论：不接受“动作好但人变了”，也不接受高清失败的黑边/灰边。

### 阶段 4：市场/IP 讨论

结论：普通月亮魔女不够强，升级为“月蚀魔女”。  
目标：做一个能被记住的桌面 IP，而不是单纯漂亮图片。

### 阶段 5：三形态概念图

产物：

- `eclipse-concepts/A-polar-night-violet-eclipse.png`
- `eclipse-concepts/B-blood-moon-devil.png`
- `eclipse-concepts/C-negative-eclipse.png`
- `eclipse-concepts/eclipse-concepts-contact.png`

用户反馈：三张都喜欢，因此采用三形态切换，而不是只选一张。

### 阶段 6：Eclipse Edition spritesheet

产物：`eclipse-edition-v0-clean1` 到 `clean6`。

主要迭代：

- clean1：初步清理红色/紫色边缘残留。
- clean2：减慢工作态，减少 PPT 感。
- clean3：过度裁切红色，被否定。
- clean4：回滚红色主体，保留更干净边缘。
- clean5：优化合法帧位，让动作更自然。
- clean6：延长工作态捧月停留，清理右侧碎片。

## 8. 如果别人想快速 get 同款

### 8.1 最快安装方式

给对方一个文件夹，里面至少包含：

```text
soli/
  pet.json
  spritesheet.webp
  README.zh.md
  README.en.md
  preview.gif
```

Codex 本地安装路径通常是：

```text
~/.codex/pets/soli/
```

安装步骤：

1. 新建目录：`~/.codex/pets/soli/`
2. 放入 `pet.json` 和 `spritesheet.webp`
3. 重启 Codex 或切换宠物。
4. 在宠物列表中选择 **朔璃 / Soli**。

### 8.2 pet.json 建议

当前为了兼容，项目内部 id 仍可保留 `moonwitch`。正式发布时建议新建独立包：

```json
{
  "id": "soli",
  "displayName": "朔璃 / Soli",
  "description": "An eclipse witch desktop companion for AI builders. Quiet in idle, focused while working, and sharply expressive in high-energy reactions.",
  "spritesheetPath": "spritesheet.webp"
}
```

### 8.3 快速复刻同款的提示词框架

如果对方想做“同款风格但不是抄 Soli”，应该给他们抽象方法，而不是给完整角色拷贝：

```text
Create a chibi desktop pet for a coding assistant.
It should have a clear IP mechanism with 2-3 visual states, each mapped to app states.
Keep the silhouette readable at 192x208.
Use large readable color blocks, clean transparent background, no shadows, no text, no floating effects.
Generate a 8x9 spritesheet, 192x208 per cell, with rows: idle, running-right, running-left, waving, jumping, failed, waiting, running, review.
```

如果是 Soli 官方同款，就应该明确：只能使用官方授权包，不开放核心角色图层和未压缩母版。

## 9. 对外发布建议

最小发布包：

- `spritesheet.webp`
- `pet.json`
- `README.zh.md`
- `README.en.md`
- `contact-sheet.png`
- `idle.gif`
- `running.gif`
- `jumping.gif`
- `failed.gif`
- 版权声明 / License
- 角色设定短文

建议 license：

- 如果只是让别人使用桌宠：使用“个人非商用免费，禁止二次售卖/商用/训练模型/去除署名”的自定义许可。
- 如果想开源代码但保护角色：代码可开源，角色美术资产不开源或仅授权使用。
- 不建议直接 MIT/CC0 发布角色资产；那等于主动放弃很多控制权。

## 10. 下一步产品化路线

短期：

1. 做一个独立 `soli` 发布包，不再用 `moonwitch` id。
2. 写中英文 README。
3. 做一张传播封面图。
4. 录制/导出 3 个 GIF：待机、工作捧月、血月跳跃。
5. 在 GitHub Release 或 Codex Pet Gallery 发布。

中期：

1. 把 spritesheet 升级成分层动画版本：Live2D / Spine / DragonBones。
2. 加眼神跟随、窗口边缘坐下、低频稀有动作。
3. 做皮肤系统：白月 / 极夜 / 负片 / 血月。
4. 建立台词与状态反馈系统。

长期：

1. 做独立桌面伴侣应用。
2. 进入 Steam / itch.io / Gumroad / BOOTH 等平台。
3. 做周边：贴纸、亚克力、鼠标垫、主题壁纸。
4. 做 Soli 官方站，沉淀角色设定、下载、授权说明。
