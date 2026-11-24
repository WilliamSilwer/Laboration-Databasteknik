using Microsoft.AspNetCore.Mvc;
using MusicManager.Models;


namespace MusicManager.Controllers
{
 
  public class MusicController : Controller
  {

    static IList<Artist> artists = new List<Artist>
    {
        
        new Artist { Id = 1, Name = "The Beatles", BirthYear = 1960, Country = "United Kingdom"} ,
        new Artist { Id = 2, Name = "Elvis Presley", BirthYear = 1935, Country = "United States"} ,
        new Artist { Id = 3, Name = "Michael Jackson", BirthYear = 1958, Country = "United States"}
    };

     public IActionResult Index()
        {
            ViewBag.Message = "Välkommen till Music Manager!";
            ViewData["ArtistCount"] = artists.Count;
            ViewBag.FavoriteArtistId = HttpContext.Session.GetInt32("FavoriteArtistId");
            return View(artists);
        }

    public IActionResult Details(int id)
        {
            var artist = artists.FirstOrDefault(a => a.Id == id);
            if (artist == null)
            {
                return NotFound();
            }
            return View(artist);
        }

        [HttpPost]
        public IActionResult SetFavorite(int id, bool isFavorite)
        {
            if (isFavorite) {
                HttpContext.Session.SetInt32("FavoriteArtistId", id);
            }
            else
            {
                HttpContext.Session.Remove("FavoriteArtistId");
            }

            return RedirectToAction("Details", new {id = id});
        }

        public IActionResult AddArtist()
    {
        return View();
    }

    [HttpPost]
    public IActionResult AddArtist(Artist artist)
        {
            if (!ModelState.IsValid)
            {
                return View(artist);
            }

            artist.Id = artists.Max(a => a.Id) + 1;
            artists.Add(artist);
            return RedirectToAction("Index");
        }
    
    }


}