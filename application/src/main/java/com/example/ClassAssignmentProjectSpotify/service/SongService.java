package com.example.ClassAssignmentProjectSpotify.service;

import java.util.List;

import com.example.ClassAssignmentProjectSpotify.model.Song;
import org.springframework.data.domain.Page;


public interface SongService {
	
	
	List <Song> getAllSongs();  // Retrieve all songs
	void saveSong(Song song);	 // Save a song object
	Song getSongById(long id); // Retrieve a song by its ID
	void deleteSongById(long id); 	// Delete a song by its ID
	
	Page<Song> getAllSongsPaginated(int page, int size);// Retrieve all songs with pagination

	 Page<Song> findSongsBySearchTerm(String searchTerm, int page, int size);// Retrieve songs by search term with pagination
}
