package com.example.ClassAssignmentProjectSpotify.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.ClassAssignmentProjectSpotify.model.Song;
import com.example.ClassAssignmentProjectSpotify.service.SongService;


@Controller
public class SongController {

	@Autowired
	private SongService songService;
	
	  @GetMapping("/songs")
	    public String viewSongsPage(Model model, @RequestParam(defaultValue = "0") int page, @RequestParam(required = false) String search) {
	        int pageSize = 10; // Defines how many songs per page 
	       
	        // Fetches a page of songs. If a search term is provided, it fetches a filtered list based on the search;
	        // otherwise, it fetches all songs paginated.
	        Page<Song> songPage = search != null ?
	                              songService.findSongsBySearchTerm(search, page, pageSize) :
	                              songService.getAllSongsPaginated(page, pageSize);
	        model.addAttribute("songPage", songPage);     // Adds the list of songs as an attribute to the model, making it accessible within the view
	        return "songs";     // Returns the "songs" view, which will display the list of songs and pages

	    } 
	
	@GetMapping("/showNewSongForm")
	public String showNewSongForm(Model model) {
		Song song = new Song();
		model.addAttribute("song", song);
		return "new_song";
	}
	
	@PostMapping("/saveSong")
	public String saveSong(@ModelAttribute("song") Song song) {
		songService.saveSong(song);
		return "redirect:/songs";
	}
	
	@GetMapping("/showFormForUpdate/{id}")
	public String showFormForUpdate(@PathVariable(value = "id") long id, Model model) {
		//Get song from the service
		Song song = songService.getSongById(id);
		//set song as a model attribute to pre-populate the form
		model.addAttribute("song", song);
		return "update_song";
	}
	
	@GetMapping("/deleteSong/{id}")
	public String deleteSong(@PathVariable(value = "id") long id) {
		this.songService.deleteSongById(id);
		return "redirect:/songs";
	}
	

    @GetMapping("/logout")
    public String logout() {
        return "redirect:/login";
    }
	
	
//Attempt#1 for searcher
//	@GetMapping("/searchSongForm")
//    public String searchSongForm(Model model) {
//        String keyWord = "Coldplay";
//		List<Song> songList = songService.listAllSongs(keyWord);
//		 model.addAttribute("songList", keyWord);
//		 
//		 return "searchSongForm";
//    }
	
}
