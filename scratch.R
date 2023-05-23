library(sf)

x <- st_read(here::here("build/lpr_000a21a_e.shp"))

g <- x |> st_transform(4326)

x |> st_transform(4326) |>
    st_write("build/pr_wsg84.shp")

