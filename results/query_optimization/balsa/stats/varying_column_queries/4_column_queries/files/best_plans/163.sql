/*+ HashJoin(ph c u v)
 HashJoin(u v)
 HashJoin(ph c)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(u)
 IndexScan(v)
 Leading(((ph c) (u v))) */
SELECT COUNT(*) FROM comments as c, postHistory as ph, votes as v, users as u WHERE u.Id = v.UserId AND v.UserId = ph.UserId AND ph.UserId =c.UserId AND c.Score=0 AND ph.PostHistoryTypeId=3 AND u.CreationDate>='2011-04-13 11:41:57'::timestamp AND u.CreationDate<='2014-09-12 02:03:20'::timestamp;

