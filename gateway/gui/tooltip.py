import tkinter as tk


class Tooltip:
    def __init__(self, widget, text):
        self.widget = widget  # tk widget object to which the tooltip belongs
        self.text = text  # tooltip text
        self.tipwindow = None
        self.x = self.y = 0  # position relative to the widget

        self.widget.bind('<Enter>', self.showtip, add='+')
        self.widget.bind('<Leave>', self.hidetip, add='+')

    def showtip(self, event):
        if self.tipwindow or not self.text:
            return  # no active tooltip window or no text to display

        self.tipwindow = tk.Toplevel(self.widget)  # create tooltip window
        self.tipwindow.wm_overrideredirect(1)
        label = tk.Label(self.tipwindow, text=self.text, justify=tk.LEFT,
                         background='white', relief=tk.SOLID, borderwidth=1)
        label.pack(ipadx=1)

        # calculate approximated position of the tooltip window
        x, y, _, _ = self.widget.bbox('insert')  # get the bounding box of the widget (x, y)
        x += self.widget.winfo_rootx()
        y += self.widget.winfo_rooty() + self.widget.winfo_height()
        self.tipwindow.geometry('+%d+%d' % (x, y))  # place tooltip text label
        self.tipwindow.update_idletasks()  # label needs to be drawn to get its width

        # now that the label is drawn and the size of the object can be obtained: correct x position
        x += (self.widget.winfo_width() - label.winfo_width()) // 2
        self.tipwindow.geometry('+%d+%d' % (x, y))  # place tooltip text label
        self.tipwindow.update_idletasks()  # draw label at right position

    def hidetip(self, event):
        if self.tipwindow:
            self.tipwindow.destroy()
        self.tipwindow = None
