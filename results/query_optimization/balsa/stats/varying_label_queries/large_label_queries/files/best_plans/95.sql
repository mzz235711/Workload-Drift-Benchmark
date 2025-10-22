/*+ HashJoin(v c u)
 HashJoin(c u)
 SeqScan(v)
 SeqScan(c)
 IndexScan(u)
 Leading((v (c u))) */
SELECT COUNT(*) FROM comments as c, votes as v, users as u WHERE u.Id = c.UserId AND c.PostId = v.PostId AND c.CreationDate>='2010-08-18 19:53:40'::timestamp AND c.CreationDate<='2014-09-13 23:27:25'::timestamp AND v.VoteTypeId=5 AND u.Reputation>=1 AND u.Reputation<=911 AND u.Views>=0 AND u.Views<=46;

