package com.insurance.service.currentuser;

import com.insurance.domain.CurrentUser;

public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);


}
