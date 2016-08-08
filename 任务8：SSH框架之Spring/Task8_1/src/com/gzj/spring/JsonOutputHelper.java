/**
 * 
 */
package com.gzj.spring;

import java.util.Iterator;
import java.util.List;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

/**
 * Json格式输出
 *
 */
public class JsonOutputHelper implements IOutputHelper {

	@Override
	public void outPut(List<employee> list) {
		try {
			JsonObject object = new JsonObject();

			JsonArray array = new JsonArray();

			Iterator<employee> iter = list.iterator();
			while (iter.hasNext()) {
				employee em = iter.next();
				JsonObject jObject = new JsonObject();
				jObject.addProperty("workno", em.getWorkno());
				jObject.addProperty("name", em.getName());
				jObject.addProperty("age", em.getAge());
				jObject.addProperty("department", em.getDepartment());

				array.add(jObject);
			}

			object.add("employees", array);

			System.out.println(object.toString());

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
