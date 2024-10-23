import tkinter as tk
from tkinter import filedialog
from . import config
from . import tooltip


class Menubar(tk.Frame):

    def __init__(self, parent):
        self.parent = parent
        tk.Frame.__init__(self, parent, bd=1, relief=tk.RAISED)
        self.configure(background='#E1F5FE')

        self.menu = []  # placeholder to keep references to menu items
        self.images = config.images()  # keep reference or it will be deleted by garbage collector!

        # place all the menu items with their respective images
        # TODO: call function when clicking on buttons
        for i in range(len(config.menu)):
            key = config.menu[i]  # store reference key for configuration access
            if key == 'separator':
                separator = tk.Frame(self, width=1, background='grey')
                separator.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.Y)
            else:
                self.menu.append(
                    tk.Button(self,  # replace list entry with button object
                              image=self.images[key],
                              background=self['background'],
                              borderwidth=0,
                              highlightthickness=0,
                              activebackground='white',
                              relief=tk.FLAT,
                              command=filedialog.askopenfile))
                tooltip.Tooltip(self.menu[-1], config.tooltips[key])  # add tooltip to button
                self.menu[-1].pack(side=tk.LEFT)

        self.pack(side=tk.TOP, fill=tk.X, expand=False)
