package com.tedu.mle.redis;

import com.tedu.mle.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;

import java.util.logging.Logger;

public class RedisTest extends BaseTest {
    @Autowired
    private RedisTemplate redisTemplate;

    private static final Logger log  = Logger.getLogger(RedisTest.class.getName());

    @Test
    public void test(){
        redisTemplate.opsForValue().set("user", "黄以波");
        log.info("value："+redisTemplate.opsForValue().get("user"));
    }
}
