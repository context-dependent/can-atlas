library(sf)
library(ggplot2)

pr_geo <- st_read(here::here("build/pr-geo-4326.json"))

pr_topo <- st_read(here::here("build/lpr_000a21a_e-topo.json"))


x <- st_read(here::here("build/lpr_000a21a_e.shp"))

g <- x |> st_transform(4326)

x |>
    st_transform(4326) |>
    st_write("build/pr_wsg84.shp")


m <- st_read(here::here("build/pr-geo-4326.json"))


d <- st_read("build/ler_000a21a_e-topo.json")


d |>
    ggplot() +
    geom_sf()

st_layers("build/ler_000a21a_e-topo.json")


pr <- st_read("build/ler_000a21a_e-topo.json", layer = "provinces")

pr |> ggplot() +
    geom_sf()

x <- st_read("build/ler_000b21a_e-geo.json")


ggplot(x) +
    geom_sf()


da <- st_read("build/lda_000a21a_e.shp")

da
