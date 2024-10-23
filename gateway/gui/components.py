import tkinter as tk
from . import config
from . import tooltip


class Components(tk.Frame):

    def __init__(self, parent):
        self.parent = parent
        self._width_factor = config.scale_components  # initial value for the size of the component catalog

        # create the surrounding frame with the border to grab and resize
        tk.Frame.__init__(self,
                          parent,
                          bd=0,
                          width=self._get_current_width(),
                          background="gray"
                          )
        self.propagate(False)  # prevent automatic resize by content (children)

        self._resize_mode = False  # flag to indicate if the user is resizing the component catalog
        self.bind("<Configure>", self._resize)  # resize because the parent was resized
        self.bind("<ButtonPress-1>", self._start_resize)  # start resizing as long as left mouse button is pressed
        self.bind("<ButtonRelease-1>", self._stop_resize)
        self.bind("<Motion>", self._resize_move_mouse)
        self.pack(side=tk.LEFT, fill=tk.Y)

        # create a frame within the movable border for the component dialog
        self.catalog = tk.Frame(self,
                                background="white",
                                cursor=""
                                )
        self.catalog.bind("<Motion>", self._normalize_cursor)  # reset cursor to default
        self.catalog.pack(side=tk.LEFT, fill=tk.BOTH, padx=(0, config.components_border_width), expand=True)

    def _normalize_cursor(self, event):  # in case the cursor was changed and needs to be reset to default
        self.configure(cursor="")

    def _get_current_width(self):  # calculate the current width of the component catalog window
        return int(self.parent.winfo_width() * self._width_factor + config.components_border_width / 2)

    def _resize(self, event):  # resize in case the parent window was resized
        self.configure(width=self._get_current_width())

    def _start_resize(self, event):
        self._resize_mode = True

    def _stop_resize(self, event):
        self._resize_mode = False

    def _resize_move_mouse(self, event):  # resize when mouse is dragging the border
        if self._resize_mode:
            self._width_factor = event.x / self.parent.winfo_width()
            self.configure(width=self._get_current_width(), cursor="sb_h_double_arrow")
        elif abs(self.winfo_width() - event.x) <= config.components_border_width:
            self.configure(cursor="sb_h_double_arrow")
