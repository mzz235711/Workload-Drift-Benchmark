/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-28 23:06:39'::timestamp AND c.CreationDate<='2014-09-04 23:45:58'::timestamp AND u.Views<=19 AND u.CreationDate>='2010-07-27 07:02:54'::timestamp AND u.CreationDate<='2014-07-24 21:05:37'::timestamp;

