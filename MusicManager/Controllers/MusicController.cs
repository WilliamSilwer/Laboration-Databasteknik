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
            return View(artists);
        }
  }





}