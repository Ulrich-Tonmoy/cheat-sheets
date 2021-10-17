# **Increase Google Colab RAM**

Paste the code in colab and run

```python
i = []
while(True):
i.append('a')
```

Wait for Google Colab to crash. As soon as it crashes due to a lack of RAM, it asks if you want more RAM:
Now, click on Get more RAM and you will see another popup:
Just click on the YES button:

# **Stop Google Colab From Disconnecting**

Just open your Chrome DevTools by pressing F12 or Ctrl+Shift+I on Linux and run the following JavaScript code in your console:

```python
function KeepClicking(){
console.log("Clicking");
document.querySelector("colab-toolbar-button#connect").click()
}setInterval(KeepClicking,60000)
```

# **The issue**

Getting the message "Sorry, something went wrong. Reload?" when viewing an \*.ipynb on a GitHub blob page.

# **Solution**

Try to open that notebook that you want using nbviewer online, you don't need to install it.

-   Open "https://nbviewer.jupyter.org/"
-   Paste the link to your notebook like (https://github.com/Ulrich-Tonmoy/cvpr/blob/main/CNN_cifar10.ipynb)
