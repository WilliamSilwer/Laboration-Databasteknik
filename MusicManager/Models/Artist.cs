using System.ComponentModel.DataAnnotations;

namespace MusicManager.Models;


public class Artist
{
    public int Id { get; set;}

    [Required(ErrorMessage = "Ange artistens namn.")]
    public string Name { get; set;} = string.Empty;

    [Range(1, 2026, ErrorMessage = "Ange ett giltigt födelseår.")]
    public int BirthYear { get; set;}

    [Required(ErrorMessage = "Ange artistens land.")]
    public string Country { get; set;} = string.Empty;
}

