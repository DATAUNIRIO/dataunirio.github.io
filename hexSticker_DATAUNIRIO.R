
library(hexSticker)
imgurl <- "https://raw.githubusercontent.com/DATAUNIRIO/dataunirio.github.io/master/images/datauniriologo.png"
sticker(imgurl, package="DataUnirio",
        s_x=1, s_y=.8, s_width=.5, s_height=.5,
        h_color="#ff9966", h_fill="white", p_color = "#4E94B5",
        filename="zinbwave.png")

#---------------------------------------------------------------------------------------------------------------------------
imgurl <- "https://raw.githubusercontent.com/DATAUNIRIO/dataunirio.github.io/master/images/transparencia.png"
sticker(imgurl, package="DATAUNIRIO",
        s_x=1, s_y=.9, s_width=.8, s_height=.8, p_x = 1, p_y = 1.5,p_size = 11,
        h_color="#ff9966", h_fill="#135880", p_color = "#ffffff",
        filename="zinbwave.png")

#---------------------------------------------------------------------------------------------------------------------------
# Google fonts
#---------------------------------------------------------------------------------------------------------------------------

library(showtext)
## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Gochi Hand", "gochi")
font_add_google("Luckiest Guy")

## Automatically use showtext to render text for future devices
showtext_auto()

imgurl <- "https://raw.githubusercontent.com/DATAUNIRIO/dataunirio.github.io/master/images/transparencia.png"
sticker(imgurl, package="DATAUNIRIO", p_family = "Luckiest Guy",
        s_x=1, s_y=.9, s_width=.8, s_height=.8, p_x = 1, p_y = 1.5,p_size = 15,
        h_color="#ff9966", h_fill="#135880", p_color = "#ffffff",
        filename="dataunirio_hex.png")


