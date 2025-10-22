/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND u.Reputation=1 AND u.Views=0 AND u.CreationDate>='2010-08-09 09:24:09'::timestamp AND u.CreationDate<='2014-08-26 13:19:59'::timestamp;

