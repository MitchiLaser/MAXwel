#!/usr/bin/env python3

import tkinter as tk
import gui.menubar as menubar


class App(tk.Tk):
    def __init__(self):
        super().__init__()

        # maximize window
        w, h = self.winfo_screenwidth(), self.winfo_screenheight()
        self.geometry(f'{w}x{h}')

        # basic window configuration
        self.title('Gateway - Schematic Editor')
        self.configure(background='white')

        # TODO: Initialize the window components
        self.menubar = menubar.Menubar(self)

        self.mainloop()


if __name__ == '__main__':
    App()
