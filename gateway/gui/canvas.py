import tkinter as tk
from . import config
from . import tooltip


class canvas(tk.Canvas):
    def __init__(self, parent):
        self.parent = parent
        tk.Canvas.__init__(self,
                           parent,
                           bd=0,
                           highlightthickness=0,
                           background="white"  # TODO: Change
                           )
        self.pack(fill=tk.BOTH, expand=True)
        # self.bind("<Configure>", self._resize)  # TODO: This might be important when the canvas has some content

    def _resize(self, event):  # resize canvas when parent window is resized
        # self.config(width=event.width, height=event.height)  # TODO: Do i need this?
        self.update_idletasks()
