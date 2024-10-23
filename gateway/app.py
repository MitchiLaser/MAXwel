#!/usr/bin/env python3

import tkinter as tk
import gui.menubar as menubar
import gui.components as components
import gui.canvas as canvas


class App(tk.Tk):
    def __init__(self):
        super().__init__()

        # maximize window
        w, h = self.winfo_screenwidth(), self.winfo_screenheight()
        self.geometry(f'{w}x{h}')

        # make the window resizeable
        self.resizable(True, True)  # Width, Height

        # basic window configuration
        self.title('Gateway - Schematic Editor')
        self.configure(background='white')

        self.menubar = menubar.Menubar(self)  # meunbar on the top
        self.components = components.Components(self)  # Components catalog on the left
        self.canvas = canvas.canvas(self)  # Canvas filling up the rest of the window

        self.mainloop()


if __name__ == '__main__':
    App()
