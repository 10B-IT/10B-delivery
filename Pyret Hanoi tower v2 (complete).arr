use context essentials2021

#Definisjoner:

# for å legge en bakgrunn for spillet
box = rectangle(400, 200, "solid", "beige")

# man kan bruke bare 1 stake, men om man har 3 så organiseres det lettere i opperasjonen
stake1 = circle(5, "solid", "black")

stake2 = circle(5, "solid", "black")

stake3 = circle(5, "solid", "black")


# her er hver ring definert, c1 til c4. de er definert kort for å gjøre det raskt å flytte de i koden. c0 er en transparang ring som brukes som placeholder. dette gjør at man kan bytte ut c0 med de andre ringene istedenfor å måtte flytte hele linjen.

c1 = circle(20, "solid", "hot-pink")

c2 = circle(30, "solid", "light green")

c3 = circle(40, "solid", "cornflower-blue")

c4 = circle(50, "solid", "orange")

c0 = circle(50, "solid", "transparent")


# Program:

# Move 0 er utgangsposisjonen, som bruker put-image i lag som gjør at alle elementene legges i riktig rekkefølge. rekkefølgen er sortert på en intuitiv måte ved at stake1 som er til venstre kommer først med alle ringene i rekkeførge, og stake2 og stake3 er fyllt opp med de transparange ringene. man kan dermed bytte ut tallene etter c for å flytte ringene, og ved å hele tiden ha ringene i samme posisjon relativt til stake definisjonene vil de altid komme i riktig rekkefølge.

# move 0

"move 0"
put-image(stake1, 60, 100,
  put-image(c1, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c3, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 1

"move 1"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c3, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 2

"move 2"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c3, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 3

"move 3"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c3, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c1, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 4

"move 4"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c1, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 5

"move 5"
put-image(stake1, 60, 100,
  put-image(c1, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 6

"move 6"
put-image(stake1, 60, 100,
  put-image(c1, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c2, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 7

"move 7"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c4, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c2, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c0, 340, 100,box)))))))))))))))

# move 8

"move 8"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c2, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 9

"move 9"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c2, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c1, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 10

"move 10"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c1, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 11

"move 11"
put-image(stake1, 60, 100,
  put-image(c1, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c3, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c0, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 12

"move 12"
put-image(stake1, 60, 100,
  put-image(c1, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c3, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 13

"move 13"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c2, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c0, 340, 100, 
                          put-image(c3, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 14

"move 14"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c1, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c0, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c3, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))

# move 15

"move 15"
put-image(stake1, 60, 100,
  put-image(c0, 60, 100,
    put-image(c0, 60, 100, 
      put-image(c0, 60, 100, 
        put-image(c0, 60, 100,
          put-image(stake2, 200, 100,
            put-image(c0, 200, 100,
              put-image(c0, 200, 100, 
                put-image(c0, 200, 100, 
                  put-image(c0, 200, 100,
                    put-image(stake3, 340, 100,
                      put-image(c1, 340, 100,
                        put-image(c2, 340, 100, 
                          put-image(c3, 340, 100, 
                            put-image(c4, 340, 100,box)))))))))))))))