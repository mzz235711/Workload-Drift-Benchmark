/*+ HashJoin(u v c p)
 HashJoin(v c p)
 HashJoin(c p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 Leading((u (v (c p)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-08-12 01:55:20'::timestamp AND c.CreationDate<='2014-09-14 01:49:32'::timestamp AND p.Score<=38 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.CommentCount<=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation>=1 AND u.Reputation<=293 AND u.Views>=0 AND u.Views<=764 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.CreationDate>='2010-08-23 16:21:10'::timestamp AND u.CreationDate<='2014-09-09 10:15:44'::timestamp;

