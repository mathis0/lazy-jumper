# Home Row Line Jumper - Jump to Any Line with Ease!

🚀 **Tired of reaching for number keys?** We've brought the power of **line jumping** right to your **home row** for **faster, more ergonomic navigation** in Neovim! 🎯  

> Instead of using the traditional number keys (`1-0`), this plugin lets you input line numbers **directly from the home row**:
>  
> **`a` → 1, `s` → 2, `d` → 3, ..., `l` → 9, `;` → 0**  

---
## 🔥 Features
✅ **Ergonomic Line Jumping** - Use `ga` to enter "Line Jump Mode" and type a line number effortlessly.  
✅ **Home Row Keybindings** - No more reaching for the number keys! Jump lines faster.  
✅ **Instant Execution** - Press `<Enter>` to jump or `<Esc>` to exit.  
✅ **Smooth & Distraction-Free** - Temporarily disables highlights (`nohlsearch`) for a cleaner experience.  
✅ **Simple & Lightweight** - No dependencies, pure Lua.  

---
## 🎮 Usage
1️⃣ **Press** `ga` to enter "Line Jump Mode."  
2️⃣ **Type your line number using the home row:**  
   - `a` → 1, `s` → 2, `d` → 3, `f` → 4, `g` → 5, `h` → 6, `j` → 7, `k` → 8, `l` → 9, `;` → 0  
3️⃣ **Press `<Enter>`** to jump to the line.  
4️⃣ **Press `<Esc>`** to exit the mode.  

---
## 🛠 Installation
### Using [lazy.nvim](https://github.com/folke/lazy.nvim)
```lua
{
    "yourusername/homerow-line-jumper",
    config = function()
        require("homerow_line_jumper").setup()
    end
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
    "yourusername/homerow-line-jumper",
    config = function()
        require("homerow_line_jumper").setup()
    end
}
```

---
## 🛠️ Configuration
By default, the plugin uses `ga` to enter "Line Jump Mode." You can change this in your Neovim config:

```lua
require("homerow_line_jumper").setup({
    shortcut = "gA",  -- Change 'ga' to another key if needed
})
```

---
## 🏆 Why Use This Plugin?
### 🏆 Speed & Efficiency
- You **never** have to move your fingers away from the home row.
- **Jumping to a line becomes muscle memory** instead of a stretch.

### 💡 Ergonomics
- Reduces **finger strain** by eliminating unnecessary hand movement.
- Keeps **your workflow fast and distraction-free.**

### 🎨 Minimal & Customizable
- Works out of the box with **zero configuration**.
- Simple, clean, and **designed for fast typists**.

---
## 🔥 Coming Soon
✅ Customizable key mappings  
✅ Visual highlights for the jumped line  
✅ Search & jump to lines with specific content  

---
## 👥 Contributing
🚀 Got ideas? PRs and issues are welcome!  
If you find this plugin helpful, give it a ⭐ on GitHub!  

---

### ⭐ Like the Plugin? Support It!
If you enjoy using **Home Row Line Jumper**, consider sharing it with fellow Neovim users!  
Happy coding! 🚀  

---

## 📂 Screenshots / Demos 
![image](https://github.com/user-attachments/assets/b34acf8b-fce9-41fb-befc-88b5280b172c)


