/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(u)
 IndexScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND ph.CreationDate>='2010-08-19 17:09:15'::timestamp AND ph.CreationDate<='2014-09-09 14:34:18'::timestamp AND u.Reputation=1 AND u.CreationDate>='2010-12-08 21:18:58'::timestamp AND u.CreationDate<='2014-09-02 07:36:02'::timestamp;

