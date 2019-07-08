package org.happybuy.service;

import java.util.List;

import org.happybuy.pojo.Activity;
import org.happybuy.pojo.ActivityExample;
import org.happybuy.pojo.Goods;

public interface ActivityService {
    List<Activity> getAllActivity(ActivityExample activityExample);

    void insertActivitySelective(Activity activity);

    Activity selectByKey(Integer activityid);

    void deleteByActivityId(Integer activityid);

//    void updateGoodsActSelective(Goods goods);
}
