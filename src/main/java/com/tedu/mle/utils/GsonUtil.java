package com.tedu.mle.utils;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import java.util.List;

/**
 * 谷歌json反序列化工具
 *
 * @author zz
 */
public class GsonUtil {
    private static Gson gson = new Gson();

    /**
     * 解析集合类型
     *
     * @param json json
     * @param <T>  集合中元素泛型
     * @return 集合List
     */
    public static <T> List<T> parseList(String json) {
        return gson.fromJson(json, new TypeToken<List<T>>() {
        }.getType());
    }

    /**
     * 解析单个对象
     *
     * @param json json
     * @param <T>  对象泛型
     * @return 对象
     */
    public static <T> T parseOne(String json) {
        return gson.fromJson(json, new TypeToken<T>() {
        }.getType());
    }
}
