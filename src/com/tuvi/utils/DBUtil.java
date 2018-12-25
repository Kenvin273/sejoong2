package com.tuvi.utils;

import com.mysql.jdbc.Statement;
import com.tuvi.dao.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class DBUtil {
	// @SuppressWarnings("unused")
	int __________________ABOUT__________________;

	public static About getAbout(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from about a" //
				+ " where a.Id = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			About about = new About();
			about.setId(id);
			about.setTitle(title);
			about.setContent(content);
			about.setSeo(seo);
			return about;
		}
		return null;
	}

	public static int updateAbout(Connection conn, About about)
			throws SQLException {
		String sql = "Update about set Title =?, Content=?, Seo=? where Id=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(4, about.getId());
		pstm.setString(1, about.getTitle());
		pstm.setString(2, about.getContent());
		pstm.setString(3, about.getSeo());
		return pstm.executeUpdate();
	}

	public static int insertAbout(Connection conn, About about)
			throws SQLException {
		String sql = "Insert into about(Title, Content, Seo) values (?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstm.setString(1, about.getTitle());
		pstm.setString(2, about.getContent());
		pstm.setString(3, about.getSeo());
		return pstm.executeUpdate();		
	}

	public static int deleteAbout(Connection conn, int id) throws SQLException {
		String sql = "Delete From about where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}
	public static List<About> queryAbout(Connection conn) throws SQLException {
		String sql = "Select * from about";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<About> list = new ArrayList<About>();
		while (rs.next()) {
			int id = rs.getInt("Id");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			About about = new About();
			about.setContent(content);
			about.setTitle(title);
			about.setId(id);
			about.setSeo(seo);
			list.add(about);
		}
		return list;
	}
	int __________________AdminAccount__________________;

	public static AdminAccount getAdminAccount(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from adminacount" //
				+ " where UserId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String userName = rs.getString("UserName");
			String password = rs.getString("Password");
			int permission = rs.getInt("Permission");
			AdminAccount adminAccount = new AdminAccount();
			adminAccount.setUserId(id);
			adminAccount.setUserName(userName);
			adminAccount.setPassword(password);
			adminAccount.setPermission(permission);
			return adminAccount;
		}
		return null;
	}

	public static AdminAccount getAdminAccount(Connection conn, //
			String userName) throws SQLException {
		String sql = "Select * from adminaccount" //
				+ " where UserName = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, userName);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			int id = rs.getInt("UserId");
			String password = rs.getString("Password");
			int permission = rs.getInt("Permission");
			AdminAccount adminAccount = new AdminAccount();
			adminAccount.setUserId(id);
			adminAccount.setUserName(userName);
			adminAccount.setPassword(password);
			adminAccount.setPermission(permission);
			return adminAccount;
		}
		return null;
	}

	public static int updateAdminAccount(Connection conn,
			AdminAccount adminAccount) throws SQLException {
		//check user exist
		AdminAccount a = getAdminAccount(conn, adminAccount.getUserName());
		
		if (a == null){
			String sql = "Update adminaccount set UserName =?, Password=?, Permission=? where UserId=?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, adminAccount.getUserId());
			pstm.setString(2, adminAccount.getUserName());
			pstm.setString(3, adminAccount.getPassword());
			pstm.setInt(4, adminAccount.getPermission());
			return pstm.executeUpdate();
		}
		return 0;
	}
	
	public static int updateAdminAccountByName(Connection conn,
			AdminAccount adminAccount) throws SQLException {
		String sql = "Update adminaccount set Password=?, Permission=? where UserName=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(3, adminAccount.getUserName());
		pstm.setString(1, adminAccount.getPassword());
		pstm.setInt(2, adminAccount.getPermission());
		return pstm.executeUpdate();
	}

	public static int insertAdminAccount(Connection conn,
			AdminAccount adminAccount) throws SQLException {
		//check user exist
		AdminAccount a = getAdminAccount(conn, adminAccount.getUserName());
		
		if (a == null){
			String sql = "Insert into adminaccount( UserName, Password, Permision) values (?,?,?)";
			PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			pstm.setString(1, adminAccount.getUserName());
			pstm.setString(2, adminAccount.getPassword());
			pstm.setInt(3, adminAccount.getPermission());
			return pstm.executeUpdate();
		}
		return 0;
	}

	public static int deleteAdminAccountID(Connection conn, int id)
			throws SQLException {
		String sql = "Delete From adminaccount where UserId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}
	public static int deleteAdminAccountByName(Connection conn, String userName)
			throws SQLException {
		
		String sql = "Delete From adminaccount where UserName = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, userName);

		return pstm.executeUpdate();
	}
	

	public static List<AdminAccount> queryAdminAccount(Connection conn)
			throws SQLException {
		String sql = "Select * from adminaccount";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<AdminAccount> list = new ArrayList<AdminAccount>();
		while (rs.next()) {
			int userId = rs.getInt("UserId");
			String userName = rs.getString("UserName");
			String password = rs.getString("Password");
			int permission = rs.getInt("Permission");
			AdminAccount adminAccount = new AdminAccount();
			adminAccount.setUserId(userId);
			adminAccount.setUserName(userName);
			adminAccount.setPassword(password);
			adminAccount.setPermission(permission);
			list.add(adminAccount);
		}
		return list;
	}

	int __________________CopyRight__________________;

	public static CopyRight getCopyRight(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from copyright" //
				+ " where Id = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String content = rs.getString("Content");
			CopyRight copyRight = new CopyRight();
			copyRight.setId(id);
			copyRight.setContent(content);
			return copyRight;
		}
		return null;
	}

	public static int updateCopyRight(Connection conn, CopyRight copyRight)
			throws SQLException {
		String sql = "Update copyright set Content=? where Id=?";
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, copyRight.getContent());
		pstm.setInt(2, copyRight.getId());
		return pstm.executeUpdate();
	}

	public static int insertCopyRight(Connection conn, CopyRight copyRight)
			throws SQLException {
		String sql = "Insert into copyright(Content) values (?)";
		PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, copyRight.getContent());
		return pstm.executeUpdate();
	}

	public static int deleteCopyRight(Connection conn, int id)
			throws SQLException {
		String sql = "Delete From copyright where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}
	public static List<CopyRight> queryCopyRight(Connection conn) throws SQLException {
		String sql = "Select * from copyright";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<CopyRight> list = new ArrayList<CopyRight>();
		while (rs.next()) {
			int id = rs.getInt("Id");
			String content = rs.getString("Content");
			
			CopyRight copyRight = new CopyRight();
			copyRight.setContent(content);
			copyRight.setId(id);
			list.add(copyRight);
		}
		return list;
	}
	int __________________Country__________________;

	public static Country getCountry(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from country" //
				+ " where CountryId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String countryName = rs.getString("CountryName");
			Country country = new Country();
			country.setCountryName(countryName);
			return country;
		}
		return null;
	}

	public static int updateCountry(Connection conn, Country country)
			throws SQLException {
		String sql = "Update country set CountryName=? where CountryId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setString(1, country.getCountryName());
		pstm.setInt(2, country.getCountryId());
		return pstm.executeUpdate();
	}

	public static int insertCountry(Connection conn, Country country)
			throws SQLException {
		String sql = "Insert into country (CountryName) values (?)";
		PreparedStatement pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, country.getCountryName());
		return pstm.executeUpdate();
	}

	public static int deleteCountry(Connection conn, int id)
			throws SQLException {
		String sql = "Delete From country where CountryId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<Country> queryCountry(Connection conn)
			throws SQLException {
		String sql = "Select * from country";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Country> list = new ArrayList<Country>();
		while (rs.next()) {
			int countryId = rs.getInt("CountryId");
			String countryName = rs.getString("CountryName");
			Country country = new Country();
			country.setCountryId(countryId);
			country.setCountryName(countryName);
			list.add(country);
		}
		return list;
	}

	int __________________Event__________________;

	public static Event getEvent(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from event" //
				+ " where EventId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			Timestamp timePlace = rs.getTimestamp("TimePlace");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			Event event = new Event();
			
			event.setTimeCreated(timeCreated);
			event.setTimePlace(timePlace);
			event.setTitle(title);
			event.setContent(content);
			event.setSeo(seo);
			return event;
		}
		return null;
	}

	public static int updateEvent(Connection conn, Event event)
			throws SQLException {
		String sql = "Update event set TimePlace =?, TimeCreated=?, Title=?, Content=?, Seo=? where EventId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(6, event.getEvetnId());
		pstm.setTimestamp(1, event.getTimePlace());
		pstm.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
		pstm.setString(3, event.getTitle());
		pstm.setString(4, event.getContent());
		pstm.setString(5, event.getSeo());
		return pstm.executeUpdate();
	}

	public static int insertEvent(Connection conn, Event event)
			throws SQLException {
		String sql = "Insert into event(TimePlace, TimeCreated, Title, Content, Seo) values (?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setTimestamp(1, event.getTimePlace());
		pstm.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
		pstm.setString(3, event.getTitle());
		pstm.setString(4, event.getContent());
		pstm.setString(5, event.getSeo());		
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteEvent(Connection conn, int id) throws SQLException {
		String sql = "Delete From event where EventId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<Event> queryEvent(Connection conn) throws SQLException {
		String sql = "Select * from event";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Event> list = new ArrayList<Event>();
		while (rs.next()) {
			int eventId = rs.getInt("EventId");
			Timestamp timePlace = rs.getTimestamp("TimePlace");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			Event event = new Event();
			event.setEvetnId(eventId);
			event.setTimePlace(timePlace);
			event.setTimeCreated(timeCreated);
			event.setTitle(title);
			event.setContent(content);
			event.setSeo(seo);
			list.add(event);
		}
		return list;
	}
	public static List<Event> queryEventTookPlace(Connection conn, int firstResult, int maxResult) throws SQLException {
		String sql = "Select * from event where TimePlace <= NOW()  limit ?,?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, firstResult);
		pstm.setInt(2, maxResult);
		ResultSet rs = pstm.executeQuery();
		List<Event> list = new ArrayList<Event>();
		while (rs.next()) {
			int eventId = rs.getInt("EventId");
			Timestamp timePlace = rs.getTimestamp("TimePlace");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			Event event = new Event();
			event.setEvetnId(eventId);
			event.setTimePlace(timePlace);
			event.setTimeCreated(timeCreated);
			event.setTitle(title);
			event.setContent(content);
			event.setSeo(seo);
			list.add(event);
		}
		return list;
	}
	int __________________Fair__________________;

	public static Fair getFair(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from fair" //
				+ " where Id = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String title = rs.getString("Title");
			String image = rs.getString("Image");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			Fair fair = new Fair();
			
			fair.setTimeCreated(timeCreated);
			fair.setImage(image);
			fair.setTitle(title);
			fair.setContent(content);
			fair.setSeo(seo);
			return fair;
		}
		return null;
	}

	public static int updateFair(Connection conn, Fair fair)
			throws SQLException {
		String sql = "Update fair set Image =?, TimeCreated=?, Title=?, Content=?, Seo=? where Id=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(6, fair.getId());
		pstm.setString(1, fair.getImage());
		pstm.setTimestamp(2, new Timestamp(System.currentTimeMillis()));
		pstm.setString(3, fair.getTitle());
		pstm.setString(4, fair.getContent());
		pstm.setString(5, fair.getSeo());
		return pstm.executeUpdate();
	}

	public static int insertFair(Connection conn, Fair fair)
			throws SQLException {
		String sql = "Insert into fair(Image, TimeCreated, Title, Content, Seo) values (?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, fair.getImage());
		Timestamp timestamp = new Timestamp(System.currentTimeMillis());
		String.format("%1$TD %1$TT", timestamp);
		pstm.setTimestamp(2, timestamp);
		pstm.setString(3, fair.getTitle());
		pstm.setString(4, fair.getContent());
		pstm.setString(5, fair.getSeo());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteFair(Connection conn, int id) throws SQLException {
		String sql = "Delete From fair where Id = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<Fair> queryFair(Connection conn) throws SQLException {
		String sql = "Select * from fair";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<Fair> list = new ArrayList<Fair>();
		while (rs.next()) {
			int id = rs.getInt("Id");
			String image = rs.getString("Image");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			Fair fair = new Fair();
			fair.setId(id);
			fair.setImage(image);
			fair.setTimeCreated(timeCreated);
			fair.setTitle(title);
			fair.setContent(content);
			fair.setSeo(seo);
			list.add(fair);
		}
		return list;
	}
	
	int __________________LocationInfo__________________;

	public static LocationInfo getLocationInfo(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from locationinfo" //
				+ " where LocationId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String content = rs.getString("Content");
			String locationName = rs.getString("LocationName");
			float mapX = rs.getFloat("MapX");
			float mapY = rs.getFloat("MapY");
			LocationInfo locationInfo = new LocationInfo();
			
			locationInfo.setLocationId(id);
			locationInfo.setLocationName(locationName);
			locationInfo.setContent(content);
			locationInfo.setMapX(mapX);
			locationInfo.setMapY(mapY);
			return locationInfo;
		}
		return null;
	}

	public static int updateLocationInfo(Connection conn, LocationInfo locationInfo)
			throws SQLException {
		String sql = "Update locationinfo set LocationName =?, Content=?, MapX=?, MapY=? where LocationId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(5, locationInfo.getLocationId());
		pstm.setString(1, locationInfo.getLocationName());		
		pstm.setString(2, locationInfo.getContent());
		pstm.setFloat(3, locationInfo.getMapX());
		pstm.setFloat(4, locationInfo.getMapY());
		return pstm.executeUpdate();
	}

	public static int insertLocationInfo(Connection conn, LocationInfo locationInfo)
			throws SQLException {
		String sql = "Insert into locationinfo(LocationName, Content, MapX, MapY) values (?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, locationInfo.getLocationName());		
		pstm.setString(2, locationInfo.getContent());
		pstm.setFloat(3, locationInfo.getMapX());
		pstm.setFloat(4, locationInfo.getMapY());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteLocationInfo(Connection conn, int id) throws SQLException {
		String sql = "Delete From locationinfo where LocationId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<LocationInfo> queryLocationInfo(Connection conn) throws SQLException {
		String sql = "Select * from locationinfo";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<LocationInfo> list = new ArrayList<LocationInfo>();
		while (rs.next()) {
			int id = rs.getInt("LocationId");
			String locationName = rs.getString("LocationName");
			String content = rs.getString("Content");
			float mapX = rs.getFloat("mapX");
			float mapY = rs.getFloat("mapY");
			LocationInfo locationInfo = new LocationInfo();
			locationInfo.setLocationId(id);
			locationInfo.setLocationName(locationName);
			locationInfo.setContent(content);
			locationInfo.setMapX(mapX);
			locationInfo.setMapY(mapY);
			list.add(locationInfo);
		}
		return list;
	}
	
	int __________________News__________________;

	public static News getNews(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from news" //
				+ " where NewsId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String content = rs.getString("Content");
			String image = rs.getString("Image");
			String title = rs.getString("Title");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String seo = rs.getString("Seo");
			
			News news = new News();
			
			news.setNewsId(id);
			news.setImage(image);
			news.setContent(content);
			news.setTitle(title);
			news.setTimeCreated(timeCreated);
			news.setSeo(seo);
			return news;
		}
		return null;
	}

	public static int updateNews(Connection conn, News news)
			throws SQLException {
		String sql = "Update news set Image =?, Title=?, Content=?, TimeCreated=?, Seo=? where NewsId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(6, news.getNewsId());
		pstm.setString(1, news.getImage());		
		pstm.setString(2, news.getTitle());
		pstm.setString(3, news.getContent());
		pstm.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		pstm.setString(5, news.getSeo());
		
		return pstm.executeUpdate();
	}

	public static int insertNews(Connection conn, News news)
			throws SQLException {
		String sql = "Insert into news(Image, Title, Content, TimeCreated, Seo) values (?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, news.getImage());		
		pstm.setString(2, news.getTitle());
		pstm.setString(3, news.getContent());
		pstm.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		pstm.setString(5, news.getSeo());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteNews(Connection conn, int id) throws SQLException {
		String sql = "Delete From news where NewsId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<News> queryNews(Connection conn) throws SQLException {
		String sql = "Select * from news";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<News> list = new ArrayList<News>();
		while (rs.next()) {
			int id = rs.getInt("NewsId");
			String image = rs.getString("Image");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			String seo = rs.getString("Seo");
			News news = new News();
			news.setNewsId(id);
			news.setImage(image);
			news.setContent(content);
			news.setTimeCreated(timeCreated);
			news.setTitle(title);
			news.setSeo(seo);
			list.add(news);
		}
		return list;
	}
	int __________________PartnerInfo__________________;

	public static PartnerInfo getPartnerInfo(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from partnerinfo" //
				+ " where PartnerId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			int countryId = rs.getInt("CountryId");
			String partnerName = rs.getString("PartnerName");
			String image = rs.getString("Image");
			String content = rs.getString("Content");
			
			PartnerInfo partnerInfo = new PartnerInfo();
			
			partnerInfo.setPartnerId(id);
			partnerInfo.setImage(image);
			partnerInfo.setContent(content);
			partnerInfo.setCountryId(countryId);
			partnerInfo.setPartnerName(partnerName);
			return partnerInfo;
		}
		return null;
	}

	public static int updatePartnerInfo(Connection conn, PartnerInfo partnerInfo)
			throws SQLException {
		String sql = "Update partnerinfo set Image =?, PartnerName=?, Content=?, CountryId=? where PartnerId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(5, partnerInfo.getPartnerId());
		pstm.setString(1, partnerInfo.getImage());		
		pstm.setString(2, partnerInfo.getPartnerName());
		pstm.setString(3, partnerInfo.getContent());
		pstm.setInt(4, partnerInfo.getCountryId());
		
		return pstm.executeUpdate();
	}

	public static int insertPartnerInfo(Connection conn, PartnerInfo partnerInfo)
			throws SQLException {
		String sql = "Insert into partnerinfo(Image, PartnerName, Content, CountryId) values (?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, partnerInfo.getImage());		
		pstm.setString(2, partnerInfo.getPartnerName());
		pstm.setString(3, partnerInfo.getContent());
		pstm.setInt(4, partnerInfo.getCountryId());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deletePartnerInfo(Connection conn, int id) throws SQLException {
		String sql = "Delete From partnerinfo where PartnerId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<PartnerInfo> queryPartnerInfo(Connection conn) throws SQLException {
		String sql = "Select * from partnerinfo";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<PartnerInfo> list = new ArrayList<PartnerInfo>();
		while (rs.next()) {
			int id = rs.getInt("PartnerId");
			String image = rs.getString("Image");
			String partnerName = rs.getString("PartnerName");
			String content = rs.getString("Content");
			int countryId = rs.getInt("CountryId");
			PartnerInfo partnerInfo = new PartnerInfo();
			partnerInfo.setPartnerId(id);
			partnerInfo.setImage(image);
			partnerInfo.setContent(content);
			partnerInfo.setCountryId(countryId);
			partnerInfo.setPartnerName(partnerName);
			list.add(partnerInfo);
		}
		return list;
	}
	public static List<PartnerInfo> queryPartnerInfoFromCountry(Connection conn, int countryId) throws SQLException {
		String sql = "Select * from partnerinfo where CountryId=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, countryId);

		ResultSet rs = pstm.executeQuery();
		List<PartnerInfo> list = new ArrayList<PartnerInfo>();
		while (rs.next()) {
			int id = rs.getInt("PartnerId");
			String image = rs.getString("Image");
			String partnerName = rs.getString("PartnerName");
			String content = rs.getString("Content");
			//int countryId = rs.getInt("CountryId");
			PartnerInfo partnerInfo = new PartnerInfo();
			partnerInfo.setPartnerId(id);
			partnerInfo.setImage(image);
			partnerInfo.setContent(content);
			partnerInfo.setCountryId(countryId);
			partnerInfo.setPartnerName(partnerName);
			list.add(partnerInfo);
		}
		return list;
	}
	int __________________RegisteredForm__________________;

	public static RegisteredForm getRegisteredForm(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from registeredform" //
				+ " where PersonId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String fullName = rs.getString("FullName");
			String email = rs.getString("Email");
			String phoneNumber = rs.getString("PhoneNumber");
			String subject = rs.getString("Subject");
			String content = rs.getString("Content");
			String location = rs.getString("Location");
			boolean processed = rs.getBoolean("Processed");
			
			RegisteredForm registeredForm = new RegisteredForm();
			
			registeredForm.setFullName(fullName);
			registeredForm.setEmail(email);
			registeredForm.setPhoneNumber(phoneNumber);
			registeredForm.setSubject(subject);
			registeredForm.setLocation(location);
			registeredForm.setContent(content);
			registeredForm.setProcessed(processed);
			return registeredForm;
		}
		return null;
	}

	public static int updateRegisteredForm(Connection conn, RegisteredForm registeredForm)
			throws SQLException {
		String sql = "Update registeredform set FullName =?, Email=?, PhoneNumber=?, Subject=?, Content=?, Location=?, Processed=? where PersonId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(8, registeredForm.getPersonId());
		pstm.setString(1, registeredForm.getFullName());		
		pstm.setString(2, registeredForm.getEmail());
		pstm.setString(3, registeredForm.getPhoneNumber());
		pstm.setString(4, registeredForm.getSubject());
		pstm.setString(5, registeredForm.getContent());
		pstm.setString(6, registeredForm.getLocation());
		pstm.setBoolean(7, registeredForm.isProcessed());
		
		return pstm.executeUpdate();
	}

	public static int insertRegisteredForm(Connection conn, RegisteredForm registeredForm)
			throws SQLException {
		String sql = "Insert into registeredform(FullName, Email, PhoneNumber, Subject, Content, Location, Processed) values (?,?,?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, registeredForm.getFullName());		
		pstm.setString(2, registeredForm.getEmail());
		pstm.setString(3, registeredForm.getPhoneNumber());
		pstm.setString(4, registeredForm.getSubject());
		pstm.setString(5, registeredForm.getContent());
		pstm.setString(6, registeredForm.getLocation());
		pstm.setBoolean(7, false);
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteRegisteredForm(Connection conn, int id) throws SQLException {
		String sql = "Delete From registeredform where PersonId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<RegisteredForm> queryRegisteredForm(Connection conn) throws SQLException {
		String sql = "Select * from registeredform";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<RegisteredForm> list = new ArrayList<RegisteredForm>();
		while (rs.next()) {
			int id = rs.getInt("PersonId");
			String fullName = rs.getString("FullName");
			String email = rs.getString("Email");
			String phoneNumber = rs.getString("PhoneNumber");
			String subject = rs.getString("Subject");
			String content = rs.getString("Content");
			String location = rs.getString("Location");
			boolean processed = rs.getBoolean("Processed");
			
			RegisteredForm registeredForm = new RegisteredForm();
			registeredForm.setPersonId(id);
			registeredForm.setFullName(fullName);
			registeredForm.setEmail(email);
			registeredForm.setPhoneNumber(phoneNumber);
			registeredForm.setSubject(subject);
			registeredForm.setContent(content);
			registeredForm.setLocation(location);
			registeredForm.setProcessed(processed);
			list.add(registeredForm);
		}
		return list;
	}
	public static List<RegisteredForm> queryRegisteredFormWithStatus(Connection conn, boolean processed) throws SQLException {
		String sql = "Select * from registeredform where Processed=?";

		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setBoolean(1, processed);
		
		ResultSet rs = pstm.executeQuery();
		List<RegisteredForm> list = new ArrayList<RegisteredForm>();
		while (rs.next()) {
			int id = rs.getInt("PersonId");
			String fullName = rs.getString("FullName");
			String email = rs.getString("Email");
			String phoneNumber = rs.getString("PhoneNumber");
			String subject = rs.getString("Subject");
			String content = rs.getString("Content");
			String location = rs.getString("Location");
			
			RegisteredForm registeredForm = new RegisteredForm();
			registeredForm.setPersonId(id);
			registeredForm.setFullName(fullName);
			registeredForm.setEmail(email);
			registeredForm.setPhoneNumber(phoneNumber);
			registeredForm.setSubject(subject);
			registeredForm.setContent(content);
			registeredForm.setLocation(location);
			registeredForm.setProcessed(processed);
			list.add(registeredForm);
		}
		return list;
	}
	
	int __________________School__________________;

	public static SchoolInfo getSchool(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from schoolinfo" //
				+ " where SchoolId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String schoolName = rs.getString("SchoolName");
			int level = rs.getInt("Level");
			String learningFee = rs.getString("LearningFee");
			String content = rs.getString("Content");
			String logo = rs.getString("Logo");
			int countryId = rs.getInt("CountryId");
			String district = rs.getString("District");
			String seo = rs.getString("Seo");
			
			SchoolInfo schoolInfo = new SchoolInfo();
			
			schoolInfo.setContent(content);
			schoolInfo.setCountryId(countryId);
			schoolInfo.setDistrict(district);
			schoolInfo.setLearningFee(learningFee);
			schoolInfo.setLevel(level);
			schoolInfo.setLogo(logo);
			schoolInfo.setSchoolId(id);
			schoolInfo.setSchoolName(schoolName);
			schoolInfo.setSeo(seo);
			return schoolInfo;
		}
		return null;
	}

	public static int updateSchool(Connection conn, SchoolInfo schoolInfo)
			throws SQLException {
		String sql = "Update schoolinfo set SchoolName =?, Level=?, LearningFee=?, Content=?, Logo=?, CountryId=?, District=?, Seo=? where SchoolId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(9, schoolInfo.getSchoolId());
		pstm.setString(1, schoolInfo.getSchoolName());		
		pstm.setInt(2, schoolInfo.getLevel());
		pstm.setString(3, schoolInfo.getLearningFee());
		pstm.setString(4, schoolInfo.getContent());
		pstm.setString(5, schoolInfo.getLogo());
		pstm.setInt(6, schoolInfo.getCountryId());
		pstm.setString(7, schoolInfo.getDistrict());
		pstm.setString(8, schoolInfo.getSeo());
		return pstm.executeUpdate();
	}

	public static int insertSchool(Connection conn, SchoolInfo schoolInfo)
			throws SQLException {
		String sql = "Insert into schoolinfo(SchoolName, Level, LearningFee, Content, Logo, CountryId, District, Seo) values (?,?,?,?,?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, schoolInfo.getSchoolName());		
		pstm.setInt(2, schoolInfo.getLevel());
		pstm.setString(3, schoolInfo.getLearningFee());
		pstm.setString(4, schoolInfo.getContent());
		pstm.setString(5, schoolInfo.getLogo());
		pstm.setInt(6, schoolInfo.getCountryId());
		pstm.setString(7, schoolInfo.getDistrict());
		pstm.setString(8, schoolInfo.getSeo());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteSchool(Connection conn, int id) throws SQLException {
		String sql = "Delete From schoolinfo where SchoolId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<SchoolInfo> querySchool(Connection conn) throws SQLException {
		String sql = "Select * from schoolinfo";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<SchoolInfo> list = new ArrayList<SchoolInfo>();
		while (rs.next()) {
			int id = rs.getInt("SchoolId");
			String schoolName = rs.getString("SchoolName");
			int level = rs.getInt("Level");
			String learningFee = rs.getString("LearningFee");
			String content = rs.getString("Content");
			String logo = rs.getString("Logo");
			int countryId = rs.getInt("CountryId");
			String district = rs.getString("District");
			String seo = rs.getString("Seo");
			
			SchoolInfo schoolInfo = new SchoolInfo();
			schoolInfo.setContent(content);
			schoolInfo.setCountryId(countryId);
			schoolInfo.setDistrict(district);
			schoolInfo.setLearningFee(learningFee);
			schoolInfo.setLevel(level);
			schoolInfo.setLogo(logo);
			schoolInfo.setSchoolId(id);
			schoolInfo.setSchoolName(schoolName);
			schoolInfo.setSeo(seo);
			list.add(schoolInfo);
		}
		return list;
	}
	int __________________Service__________________;

	public static ServiceInfo getService(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from serviceinfo" //
				+ " where ServiceId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String serviceName = rs.getString("ServiceName");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			ServiceInfo serviceInfo = new ServiceInfo();
			
			serviceInfo.setContent(content);
			serviceInfo.setServiceName(serviceName);
			serviceInfo.setSeo(seo);
			return serviceInfo;
		}
		return null;
	}

	public static int updateService(Connection conn, ServiceInfo serviceInfo)
			throws SQLException {
		String sql = "Update serviceinfo set ServiceName =?, Content=?, Seo=? where ServiceId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(4, serviceInfo.getServiceId());
		pstm.setString(1, serviceInfo.getServiceName());		
		pstm.setString(2, serviceInfo.getContent());
		pstm.setString(3, serviceInfo.getSeo());		
		return pstm.executeUpdate();
	}

	public static int insertService(Connection conn, ServiceInfo serviceInfo)
			throws SQLException {
		String sql = "Insert into serviceinfo(ServiceName, Content, Seo) values (?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, serviceInfo.getServiceName());		
		pstm.setString(2, serviceInfo.getContent());
		pstm.setString(3, serviceInfo.getSeo());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteService(Connection conn, int id) throws SQLException {
		String sql = "Delete From serviceinfo where ServiceId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<ServiceInfo> queryService(Connection conn) throws SQLException {
		String sql = "Select * from serviceinfo";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<ServiceInfo> list = new ArrayList<ServiceInfo>();
		while (rs.next()) {
			int id = rs.getInt("ServiceId");
			String serviceName = rs.getString("ServiceName");
			String content = rs.getString("Content");
			String seo = rs.getString("Seo");
			
			ServiceInfo serviceInfo = new ServiceInfo();
			serviceInfo.setContent(content);
			serviceInfo.setServiceName(serviceName);
			serviceInfo.setServiceId(id);
			serviceInfo.setSeo(seo);
			list.add(serviceInfo);
		}
		return list;
	}
	
	int __________________StudentFeedback__________________;

	public static StudentFeedback getStudentFeedback(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from studentfeedback" //
				+ " where StudentId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String studentName = rs.getString("StudentName");
			String content = rs.getString("Content");
			String image = rs.getString("Image");
			String infor = rs.getString("Infor");
			
			StudentFeedback studentFeedback = new StudentFeedback();
			
			studentFeedback.setContent(content);
			studentFeedback.setStudentName(studentName);
			studentFeedback.setInfor(infor);
			studentFeedback.setImage(image);
			return studentFeedback;
		}
		return null;
	}

	public static int updateStudentFeedback(Connection conn, StudentFeedback studentFeedback)
			throws SQLException {
		String sql = "Update studentfeedback set StudentName =?, Content=?, Image=?, Infor=? where StudentId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(5, studentFeedback.getStudentId());
		pstm.setString(1, studentFeedback.getStudentName());		
		pstm.setString(2, studentFeedback.getContent());
		pstm.setString(3, studentFeedback.getImage());
		pstm.setString(4, studentFeedback.getInfor());
				
		return pstm.executeUpdate();
	}

	public static int insertStudentFeedback(Connection conn, StudentFeedback studentFeedback)
			throws SQLException {
		String sql = "Insert into studentfeedback(StudentName, Content, Image, Infor) values (?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, studentFeedback.getStudentName());		
		pstm.setString(2, studentFeedback.getContent());
		pstm.setString(3, studentFeedback.getImage());
		pstm.setString(4, studentFeedback.getInfor());
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteStudentFeedback(Connection conn, int id) throws SQLException {
		String sql = "Delete From studentfeedback where StudentId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<StudentFeedback> queryStudentFeedback(Connection conn) throws SQLException {
		String sql = "Select * from studentfeedback";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<StudentFeedback> list = new ArrayList<StudentFeedback>();
		while (rs.next()) {
			int id = rs.getInt("StudentId");
			String studentName = rs.getString("StudentName");
			String content = rs.getString("Content");
			String image = rs.getString("Image");
			String infor = rs.getString("Infor");
			
			StudentFeedback studentFeedback = new StudentFeedback();
			studentFeedback.setContent(content);
			studentFeedback.setStudentName(studentName);
			studentFeedback.setImage(image);
			studentFeedback.setInfor(infor);
			studentFeedback.setStudentId(id);
			list.add(studentFeedback);
		}
		return list;
	}
	int __________________SuccessfullStory__________________;

	public static SuccessfulStory getSuccessfulStory(Connection conn, //
			int id) throws SQLException {
		String sql = "Select * from successfulstory" //
				+ " where StoryId = ?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(1, id);
		ResultSet rs = pstm.executeQuery();
		if (rs.next()) {
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String image = rs.getString("Image");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			
			SuccessfulStory successfulStory = new SuccessfulStory();
			
			successfulStory.setContent(content);
			successfulStory.setTimeCreated(timeCreated);
			successfulStory.setTitle(title);
			successfulStory.setImage(image);
			return successfulStory;
		}
		return null;
	}

	public static int updateSuccessfulStory(Connection conn, SuccessfulStory successfulStory)
			throws SQLException {
		String sql = "Update successfulstory set Title =?, Content=?, Image=?, TimeCreated=? where StoryId=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setInt(5, successfulStory.getStoryId());
		pstm.setString(1, successfulStory.getTitle());		
		pstm.setString(2, successfulStory.getContent());
		pstm.setString(3, successfulStory.getImage());
		pstm.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
				
		return pstm.executeUpdate();
	}

	public static int insertSuccessfulStory(Connection conn, SuccessfulStory successfulStory)
			throws SQLException {
		String sql = "Insert into successfulstory(Title, Content, Image, TimeCreated) values (?,?,?,?)";
		PreparedStatement pstm = conn.prepareStatement(sql,
				Statement.RETURN_GENERATED_KEYS);
		pstm.setString(1, successfulStory.getTitle());		
		pstm.setString(2, successfulStory.getContent());
		pstm.setString(3, successfulStory.getImage());
		pstm.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
		int result = pstm.executeUpdate();

		return result;
	}

	public static int deleteSuccessfulStory(Connection conn, int id) throws SQLException {
		String sql = "Delete From successfulstory where StoryId = ?";

		PreparedStatement pstm = conn.prepareStatement(sql);

		pstm.setInt(1, id);

		return pstm.executeUpdate();
	}

	public static List<SuccessfulStory> querySuccessfulStory(Connection conn) throws SQLException {
		String sql = "Select * from successfulstory";

		PreparedStatement pstm = conn.prepareStatement(sql);

		ResultSet rs = pstm.executeQuery();
		List<SuccessfulStory> list = new ArrayList<SuccessfulStory>();
		while (rs.next()) {
			int id = rs.getInt("StoryId");
			String title = rs.getString("Title");
			String content = rs.getString("Content");
			String image = rs.getString("Image");
			Timestamp timeCreated = rs.getTimestamp("TimeCreated");
			
			SuccessfulStory successfulStory = new SuccessfulStory();
			successfulStory.setContent(content);
			successfulStory.setTitle(title);
			successfulStory.setImage(image);
			successfulStory.setTimeCreated(timeCreated);
			successfulStory.setStoryId(id);
			list.add(successfulStory);
		}
		return list;
	}
}