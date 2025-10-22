/*+ NestLoop(p v u c)
 HashJoin(p v u)
 HashJoin(p v)
 SeqScan(p)
 SeqScan(v)
 SeqScan(u)
 IndexScan(c)
 Leading((((p v) u) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.Score=0 AND c.CreationDate<='2014-09-09 23:35:04'::timestamp AND p.Score<=15 AND p.ViewCount>=0 AND p.ViewCount<=4975 AND p.AnswerCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.CreationDate<='2014-08-21 19:39:25'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=137 AND u.Views>=0 AND u.CreationDate>='2010-11-23 08:12:26'::timestamp;

