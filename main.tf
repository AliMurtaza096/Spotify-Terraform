
# See https://github.com/conradludgate/terraform-provider-spotify#how-to-use
# for how to get an api key


resource "spotify_playlist" "playlist" {
  name        = "My playlist"
  description = "My playlist is so awesome"
  public      = false

  tracks = [
    data.spotify_track.overkill.id,
    data.spotify_track.blackwater.id,
    data.spotify_track.snowblind.id,
  ]
}

data "spotify_track" "overkill" {
  url = "https://open.spotify.com/track/4XdaaDFE881SlIaz31pTAG"
}
data "spotify_track" "blackwater" {
  url = "https://open.spotify.com/track/4lE6N1E0L8CssgKEUCgdbA"
}
data "spotify_track" "snowblind" {
  url = "https://open.spotify.com/track/7FCG2wIYG1XvGRUMACC2cD"
}



resource "spotify_playlist" "kaavish" {
  name = "Kaavish is Love"
  tracks = [
             "2lp1Tsn8H6mq0bzXgOeLHY",
             "6YNl1rXbhKvmbMrw9cp3RQ",
             "5nLlwrElZuyqp7A4fb1o87"
            ]
}

output "kaavish_palylist_url" {
  value       = "https://open.spotify.com/playlist/${spotify_playlist.kaavish.id}"
  description = "Visit this URL in your browser to listen to the playlist"
}