#No.1
Vnum <- c(2.8,1.5,1.8,2.2,3.0) #vector numeric
Vnum
Vint <- c(1L,8L,2L,7L) #vector integer
Vint
Vlog <- c(FALSE, TRUE, TRUE) #vector logical
Vlog
Vchar <- c("saya", "mahasiswa", "statistika") #vector character
Vchar

#No.2 (matrix 4x4)
M <- matrix(10:25, nrow = 4, ncol = 4)
M

#No.3 (array 4x4)
A <- array(1:24, dim = c(2,3,2,2))
A

#No.4
konser <- data.frame(
  artis = c("Reality Club", "Wave to Earth", "Westlife", "Magnolia Celebration"),
  harga_tiket = c(250000,750000, 1300000, 150000 ),
  sold_out = c(TRUE, TRUE, TRUE, FALSE),
  weekend = c(TRUE, FALSE, TRUE, FALSE)
)
konser

#No.5
main_list <- list(
  umur = matrix(c(43,42,19,12,7), nrow = 1),
  bil_prima = matrix(c(1,2,3,5,7,11), ncol = 1),
  kelipatan_3 = matrix(seq(1,48, by = 3),nrow = 4,byrow = TRUE),
  bunga = data.frame(
    nama_bunga = c("Gerbera", "Peony", "Camellia", "Hydrangea"),
    harga_setangkai = c(15000,20000,25000,18000),
    tersedia = c(TRUE,TRUE,FALSE,TRUE),
    untuk_bucket = c(TRUE,TRUE,TRUE,FALSE)
  ),
  List_2 = list(
    mat_kuadrat = matrix(seq(1,16)^2, nrow = 4, byrow = TRUE),
    fibonacci = array(
      c(1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987),
      dim = c(2,2,2,2)
    ),
    planet = data.frame(
      nama_planet = c("Merkurius", "Bumi", "Saturnus", "Neptunus"),
      jarak_matahari_juta_km = c(57.9,149.6,1433.5,4495.1),
      punya_cincin = c(FALSE,FALSE,TRUE,TRUE),
      punya_satelit = c(FALSE,TRUE,TRUE,TRUE)
    ),
    bil_kubik = matrix(c(1,8,27,64), nrow = 1)
  )
)
main_list
