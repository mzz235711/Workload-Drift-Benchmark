/*+ HashJoin(u v c)
 HashJoin(v c)
 SeqScan(u)
 IndexScan(v)
 SeqScan(c)
 Leading((u (v c))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND u.Views<=44 AND u.CreationDate>='2010-07-19 19:11:38'::timestamp;

