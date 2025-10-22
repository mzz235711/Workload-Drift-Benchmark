/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate<='2014-09-13 02:08:46'::timestamp AND u.Reputation=101;

