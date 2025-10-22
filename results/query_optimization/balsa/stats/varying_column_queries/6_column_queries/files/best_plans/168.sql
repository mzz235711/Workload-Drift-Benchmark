/*+ HashJoin(u c v)
 HashJoin(c v)
 SeqScan(u)
 SeqScan(c)
 SeqScan(v)
 Leading((u (c v))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.Score=0 AND v.BountyAmount>=0 AND v.CreationDate>='2010-07-19 00:00:00'::timestamp AND u.Views>=0 AND u.CreationDate>='2010-07-19 19:45:41'::timestamp AND u.CreationDate<='2014-09-12 14:08:15'::timestamp;

