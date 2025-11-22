# Tradewinds: Oric game rescued from the 1980s

I don't play games, but I did write one. In about 1984 I wrote a BASIC game called Tradewinds on my Oric Atmos. Forty years later I found a tape of that game, and decided to rescue it, if possible.

The first thing to do was to record the audio and get it into a digital file. I have a SOny digital recorder and used that to record from an old all-in-one hifi unit, out of the headphone socket and into the Sony. It seemed to work so I then hunted for a way to decode the data. I thought about writing a tool after I had no luck with a few that I found. Then I found py-kcs which successfully decoded the data on the tape. (In this archive, that's the 'in' file.
With the decoded audio I could see some text in the data, and could see that it did look lik emy original program, or at least, what I could remember of it from the far end of forty years. My name was a bit of a giveaway, too.
Within the data were a lot of binary tokens, these are Oric specific, so I wrote a small tool (decode2.tcl, I had two attempts at it), which turned the tokens into the correct text. Well almost. If you copmpare YTradewinds2.bas with Tradewinds.bas you will spot some differences with brackets. It turns out that the TAB and SPC keywords are actually TAB( and SPC(, and my tool left off the bracket. So Tradewinds.bas was manually altered to get Tradewinds2.bas. And, there's the program.

I bought an FPGA Atmos emulator, but the video has eluded all my screens so far, so ran a software emulator and managed to run the game again...

