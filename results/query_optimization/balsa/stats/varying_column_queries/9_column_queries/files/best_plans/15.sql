/*+ HashJoin(c p u)
 HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 SeqScan(u)
 Leading(((c p) u)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate>='2010-10-19 16:42:48'::timestamp AND p.Score>=-1 AND p.Score<=41 AND p.FavoriteCount=0 AND u.Reputation>=1 AND u.Views>=0 AND u.Views<=90 AND u.UpVotes>=0 AND u.UpVotes<=40;

