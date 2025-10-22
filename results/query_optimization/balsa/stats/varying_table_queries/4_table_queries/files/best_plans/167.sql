/*+ HashJoin(ph u b c)
 HashJoin(ph u b)
 HashJoin(u b)
 SeqScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(c)
 Leading(((ph (u b)) c)) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-02-21 23:51:06'::timestamp AND b.Date>='2010-07-19 19:39:10'::timestamp;

