/*+ HashJoin(ph b u c)
 HashJoin(b u c)
 HashJoin(u c)
 SeqScan(ph)
 SeqScan(b)
 SeqScan(u)
 SeqScan(c)
 Leading((ph (b (u c)))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2010-09-19 14:02:26'::timestamp AND u.CreationDate>='2010-09-02 05:43:30'::timestamp;

