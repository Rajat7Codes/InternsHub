/**
 * 
 */
package com.iceico.internship.service;

import java.util.List;

import com.iceico.internship.model.UserProfile;

/**
 * @author PRAFUL MESHRAM
 * @version 0.1
 *
 */
public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);

	List<UserProfile> findAll();

}