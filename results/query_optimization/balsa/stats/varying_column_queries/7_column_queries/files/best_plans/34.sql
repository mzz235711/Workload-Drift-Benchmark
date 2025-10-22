/*+ HashJoin(p c u)
 NestLoop(c u)
 SeqScan(p)
 SeqScan(c)
 IndexScan(u)
 Leading((p (c u))) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.Score=2 AND p.CreationDate>='2010-07-29 15:57:21'::timestamp AND p.CreationDate<='2014-08-27 14:27:12'::timestamp AND u.Reputation<=1307 AND u.Views>=0 AND u.Views<=18 AND u.DownVotes>=0;

