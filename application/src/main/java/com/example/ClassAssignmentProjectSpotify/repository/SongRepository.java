package com.example.ClassAssignmentProjectSpotify.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import com.example.ClassAssignmentProjectSpotify.model.Song;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;



public interface SongRepository extends JpaRepository<Song, Long> {
   
    // Basic method to retrieve all songs with paginazation

    Page<Song> findAll(Pageable pageable);
    
    // Search for songs by title or artist using a case-insensitive search
    @Query("SELECT s FROM Song s WHERE lower(s.title) LIKE lower(concat('%', :searchTerm, '%')) OR lower(s.artist) LIKE lower(concat('%', :searchTerm, '%'))")
    Page<Song> findByTitleOrArtist(@Param("searchTerm") String searchTerm, Pageable pageable);
    
    
    
}