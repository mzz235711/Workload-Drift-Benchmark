/*+ HashJoin(ph u c)
 HashJoin(u c)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(c)
 Leading((ph (u c))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, users as u WHERE u.Id = c.UserId AND c.UserId = ph.UserId AND c.CreationDate>='2010-07-25 01:37:03'::timestamp AND ph.CreationDate<='2014-09-01 05:54:47'::timestamp AND u.Reputation>=1 AND u.CreationDate>='2011-04-28 10:29:56'::timestamp;

