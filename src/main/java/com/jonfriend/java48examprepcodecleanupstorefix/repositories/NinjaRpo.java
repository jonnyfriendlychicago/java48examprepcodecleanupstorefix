package com.jonfriend.java48examprepcodecleanupstorefix.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jonfriend.java48examprepcodecleanupstorefix.models.NinjaMdl;

@Repository
public interface NinjaRpo extends CrudRepository<NinjaMdl, Long> {
	List<NinjaMdl> findAll(); 
}
