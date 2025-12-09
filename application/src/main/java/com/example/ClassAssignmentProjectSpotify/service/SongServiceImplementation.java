package com.example.ClassAssignmentProjectSpotify.service;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.List;

import com.example.ClassAssignmentProjectSpotify.model.Song;
import com.example.ClassAssignmentProjectSpotify.repository.SongRepository;


@Service
public class SongServiceImplementation implements SongService{

	@Autowired
	private SongRepository songRepository;
	
	@Override
	public List<Song> getAllSongs() {
		return songRepository.findAll();
		
	}

	@Override
	public void saveSong(Song song) {
		this.songRepository.save(song);
		
	}

	@Override
	public Song getSongById(long id) {
		Optional<Song> optional = songRepository.findById(id);
		Song song = null;
		
		if(optional.isPresent()) {
			song = optional.get();
			
		}else {
			throw new RuntimeException("Song not found for id: " + id);
		}
		return song;
	}

	@Override
	public void deleteSongById(long id) {
		this.songRepository.deleteById(id);
		
	}

	@Override
	public Page<Song> getAllSongsPaginated(int page, int size) {
		Pageable pageable = PageRequest.of(page, size);
        return songRepository.findAll(pageable);
	
	}

	 @Override     // Search for songs based on a search term and paginate the results
	    public Page<Song> findSongsBySearchTerm(String searchTerm, int page, int size) {
	        Pageable pageable = PageRequest.of(page, size);
	        return songRepository.findByTitleOrArtist(searchTerm, pageable);
	    }
	

	

}
