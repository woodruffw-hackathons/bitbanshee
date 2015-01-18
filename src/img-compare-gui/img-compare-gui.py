#!/usr/bin/env python2

from PIL import Image, ImageTk
from Tkinter import Tk, Label, Button, LEFT

def modify_img():
	pass

root = Tk()

img1 = Image.open("/home/william/1.jpg")
pho1 = ImageTk.PhotoImage(img1)
lab1 = Label(image = pho1)
lab1.image = pho1
lab1.pack(side = LEFT)

but1 = Button(root, text = "modify", command = modify_img)
but2 = Button(root, text = "foo", command = modify_img)
but1.pack(side = LEFT)
but2.pack(side = LEFT)

img2 = Image.open("/home/william/2.jpg")
pho2 = ImageTk.PhotoImage(img2)
lab2 = Label(image = pho2)
lab2.image = pho2
lab2.pack(side = LEFT)

Tk.mainloop(root)
