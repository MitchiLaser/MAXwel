import tkinter as tk


# this is a list of all the available menu options
# 'separator' is a special keyword that creates a vertical line between menu items
menu = [
    'openfile',
    'savefile',
    'saveas',
    'newfile',
    'separator',
    'undo',
    'redo',
    'separator',
    'mouse',
    'move',
    'delete',
    'draw',
    'joint',
    'separator',
    'upload',
]

# a list of texts shown when hovering over the menu items
tooltips = {
    'openfile': 'Open File',
    'savefile': 'Save File',
    'saveas': 'Save As',
    'newfile': 'New File',
    'undo': 'Undo',
    'redo': 'Redo',
    'mouse': 'Mouse',
    'move': 'Move',
    'delete': 'Delete',
    'draw': 'Draw',
    'joint': 'Add Joint',
    'upload': 'Upload',
}


def images():
    # open all images and keep a reference to them
    # if the reference is lost, the garbage collector deletes the image in the gui
    # the subsample method is used to downscale the image size
    # this code can only be executed when tk root object is available, therefore in function
    return {
        'openfile': tk.PhotoImage(file='img/open_file.gif').subsample(3, 3),
        'savefile': tk.PhotoImage(file='img/save_file.gif').subsample(3, 3),
        'saveas': tk.PhotoImage(file='img/save_as.gif').subsample(3, 3),
        'newfile': tk.PhotoImage(file='img/new_file.gif').subsample(3, 3),
        'undo': tk.PhotoImage(file='img/undo.gif').subsample(3, 3),
        'redo': tk.PhotoImage(file='img/redo.gif').subsample(3, 3),
        'mouse': tk.PhotoImage(file='img/mouse.gif').subsample(3, 3),
        'move': tk.PhotoImage(file='img/move.gif').subsample(3, 3),
        'delete': tk.PhotoImage(file='img/delete.gif').subsample(3, 3),
        'draw': tk.PhotoImage(file='img/draw.gif').subsample(3, 3),
        'joint': tk.PhotoImage(file='img/joint.gif').subsample(3, 3),
        'upload': tk.PhotoImage(file='img/upload.gif').subsample(3, 3),
    }


actions = {

}


# this is the scaling factor for the components menu
scale_components = 1 / 5
components_border_width = 4  # in pixels
